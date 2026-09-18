# Calibrated galvanic skin response sample from a Shimmer3 GSR+ unit.
std_msgs/Header header

# Skin conductance. This is the channel most EDA analysis works in.
float32 conductance_us

# Skin resistance, what the amplifier actually measures.
float32 resistance_kohm

# Raw 16-bit channel word, range bits included. Kept for traceability.
uint16 raw

# 12-bit ADC value with the range bits masked off.
uint16 adc

# Which feedback resistor was in circuit for this sample (0-3).
# On auto-range the firmware picks this per sample, so a step in the
# conductance trace at a range change is a switching artefact, not a
# physiological event.
uint8 range

# True when the value fell outside the window the active range can measure,
# e.g. electrodes not attached (open circuit) or pressed unusually hard.
bool out_of_range
