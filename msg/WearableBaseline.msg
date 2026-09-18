# Per-subject resting baseline measured by a wearable, captured over a
# calibration window and used to make derived states relative to the
# individual rather than a fixed population threshold (e.g. "20 bpm above
# THIS wearer's resting rate" instead of a flat "90 bpm").
std_msgs/Header header

# False until enough resting data has been captured (or a manual value set).
bool calibrated

# "auto" once computed from a resting window, "manual" if a fixed value was
# supplied via parameter/environment instead.
string source

float32 calibration_duration_sec

float32 hr_baseline_bpm
float32 hr_baseline_std_bpm
uint32 hr_samples

# Tonic (slow) skin conductance level at rest.
float32 eda_tonic_baseline_us
float32 eda_tonic_baseline_std_us

# Phasic component is tonic-subtracted conductance, so at rest it hovers near
# zero; its resting std is the noise floor a real skin conductance response
# needs to rise above.
float32 eda_phasic_baseline_mean_us
float32 eda_phasic_baseline_std_us
uint32 eda_samples
