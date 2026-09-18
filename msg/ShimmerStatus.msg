# Link and configuration state of the Shimmer3 device.
std_msgs/Header header

bool connected
bool streaming

string firmware
string device_name

float32 sampling_rate_hz

# Configured GSR full-scale range: 0-3 fixed, 4 auto-range.
uint8 gsr_range_setting

# Channel names in the order the device sends them, as reported by its own
# inquiry response. This is the authoritative packet layout.
string[] channels

float32 battery_volts
float32 battery_percent

uint64 packets
uint64 bytes_dropped
uint64 resyncs
