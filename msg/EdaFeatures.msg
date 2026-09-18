# Electrodermal activity features over a rolling window of skin conductance.
std_msgs/Header header

# Length of the rolling window these features were computed over.
float32 window_sec
uint32 samples

# Tonic level (skin conductance level, SCL): the slow baseline.
float32 tonic_us

# Phasic component (skin conductance response, SCR) of the newest sample:
# conductance minus the tonic baseline.
float32 phasic_us

float32 mean_us
float32 std_us
float32 min_us
float32 max_us

# Linear trend across the window. Positive means rising arousal.
float32 slope_us_per_sec

# Rate of discrete SCR peaks, a standard arousal indicator.
float32 scr_per_min

# False while electrodes read open-circuit or the window is not yet full.
bool valid
