/**
 * @file audio_processor.h
 * @brief 0200: Pluggable audio processor interface
 *
 * Each processor runs on stereo interleaved float data.
 * ProcessorChain manages ordered list with enable/disable.
 */
#ifndef AUDIO_PROCESSOR_H
#define AUDIO_PROCESSOR_H

#include <cstdint>
#include <string>
#include <vector>
#include <memory>

class AudioProcessor {
public:
    virtual ~AudioProcessor() = default;
    virtual const char* name() const = 0;
    virtual void process(float* stereoData, int64_t numFrames) = 0;
    virtual void reset() {}
    bool enabled = true;
};

class ProcessorChain {
public:
    void add(std::unique_ptr<AudioProcessor> proc) {
        m_processors.push_back(std::move(proc));
    }
    void clear() { m_processors.clear(); }
    size_t size() const { return m_processors.size(); }

    void process(float* stereoData, int64_t numFrames) {
        for (auto& p : m_processors) {
            if (p->enabled) p->process(stereoData, numFrames);
        }
    }

    void reset() {
        for (auto& p : m_processors) p->reset();
    }

    /** Enable/disable by name (case-sensitive) */
    void setEnabled(const char* procName, bool enabled) {
        for (auto& p : m_processors) {
            if (std::string(p->name()) == procName) { p->enabled = enabled; return; }
        }
    }

private:
    std::vector<std::unique_ptr<AudioProcessor>> m_processors;
};

#endif
