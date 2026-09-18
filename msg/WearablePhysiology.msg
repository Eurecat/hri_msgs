# Physiological summary from one wearable, aggregated into a single message so
# the perception stack can consume a wearer's state from one topic instead of
# subscribing to every per-sensor stream.
#
# The detailed streams (Gsr, Ppg, HeartRate, EdaFeatures, WearableBaseline)
# stay available for analysis; this is the fused view meant for fusion nodes
# such as the person manager.
std_msgs/Header header

# Which device this came from, e.g. "shimmer3_1FE7". Lets several wearers be
# told apart on one topic.
string wearable_id

# Canonical person id (person_<uuid>) of the wearer, when known. Empty when
# the wearable has not been associated with a tracked person: a wearable
# cannot identify anyone by itself, so this is set by configuration or by a
# fusion node, never inferred from the signal.
string person_id

# --- Heart rate -------------------------------------------------------------
float32 heart_rate_bpm
float32 heart_rate_confidence   # 0-1 beat consistency score
bool heart_rate_valid           # false while the estimate is unusable; bpm is 0 then

# --- Electrodermal activity -------------------------------------------------
float32 eda_tonic_us            # slow baseline (skin conductance level)
float32 eda_phasic_us           # fast component (skin conductance response)
float32 eda_scr_per_min         # rate of discrete sweat responses
bool eda_valid                  # false while electrodes are open-circuit or settling

# --- Resting baseline of this wearer ---------------------------------------
# False until the baseline calibration window has completed. The derived
# states below that depend on the baseline hold their default until then.
bool baseline_calibrated
float32 baseline_heart_rate_bpm

# --- Derived boolean states -------------------------------------------------
# One entry per configured rule, e.g. is_nervous, is_stressed,
# startle_response. Each carries the value and threshold it was decided on.
WearableDerivedState[] states
