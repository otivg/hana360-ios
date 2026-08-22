#ifndef CIPIC_HRIR_V9_H
#define CIPIC_HRIR_V9_H
#define CIPIC_V9_NUM_GROUPS 15
#define CIPIC_V9_NUM_AZIMUTHS 25
#define CIPIC_V9_NUM_ELEVATIONS 50
#define CIPIC_V9_HRIR_LENGTH 217
#define CIPIC_V9_SAMPLE_RATE 48000
extern const float cipic_v9_azimuths[25];
extern const float cipic_v9_elevations[50];
extern const int cipic_v9_group_info[15][7];
#define CIPIC_V9_ASSET_PATH "cipic_v9_hrir.bin"
#endif
