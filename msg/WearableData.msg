# This message contains a single wearable data entry

# Identifier for the wearable device
# Ought to be a string composed as "{MOBILE_DEVICE_ID}_{WEARABLE_INDEX}"
string wearable_id

# Measured parameters

uint8 heart_rate

uint8 spo2

uint8 stress

# UNIX timestamp - Stores the time when the data was recorded

int64 timestamp