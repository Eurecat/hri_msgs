# Heart rate estimated from the PPG waveform by peak detection.
std_msgs/Header header

# Beats per minute, smoothed over the recent beat history.
float32 bpm

# Inter-beat interval of the most recent detected beat.
float32 ibi_ms

# Instantaneous BPM of the most recent beat alone, before smoothing.
float32 bpm_instant

# Rough 0-1 quality score from beat-to-beat consistency and signal amplitude.
# Treat bpm as meaningless when valid is false.
float32 confidence

# False until enough clean beats have accumulated to report a rate.
bool valid

# Total beats detected since the node started.
uint32 beats
