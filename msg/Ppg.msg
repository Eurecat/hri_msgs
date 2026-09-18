# Photoplethysmogram sample from the optical pulse probe on the GSR+ 3.5mm jack.
std_msgs/Header header

# Probe output voltage.
float32 millivolts

# Raw 12-bit ADC value.
uint16 adc

# Which expansion ADC channel the probe is wired to (13 for the stock probe).
uint8 adc_channel
