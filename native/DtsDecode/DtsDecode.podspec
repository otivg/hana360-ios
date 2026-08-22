Pod::Spec.new do |s|
  s.name             = 'DtsDecode'
  s.version          = '0.1.0'
  s.summary          = 'Hana360 DTS-WAV decoder wrapper (dcadec, LGPLv2.1)'
  s.description      = 'Detects DTS-CD streams masquerading as PCM WAV (DCA 1411kbps) and ' \
                       'decodes them to stereo float32 via dcadec. 14-bit restore + 5.1/7.1 downmix.'
  s.homepage         = 'https://github.com/otivg/hana360-ios'
  s.license          = { :type => 'LGPL-2.1' }
  s.author           = { 'Hana360' => 'dev@hana360.local' }
  s.platform         = :ios, '15.0'
  s.source           = { :path => '.' }

  s.source_files     = 'src/*.c', 'include/*.h', 'libdcadec/*.c', 'libdcadec/*.h'
  s.public_header_files = 'include/dts_decode.h'

  s.pod_target_xcconfig = {
    'CLANG_WARN_QUOTED_INCLUDE_IN_FRAMEWORK_HEADER' => 'NO',
    'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) DCADEC_API=__attribute__((visibility(\"default\")))',
    'GCC_C_LANGUAGE_STANDARD' => 'gnu99',
  }
  s.libraries = 'c'
end
