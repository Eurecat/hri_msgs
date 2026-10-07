# What the robot itself is saying out loud.
#
# Published by whoever plays the robot's voice: EutSpeechAudioProcessing's audio_stream_manager
# for sound-card robots, or a robot driver (e.g. reachy_speech) that plays through its own SDK.
# The state follows PLAY-OUT, not synthesis or sending: active=true when the first sample is
# audible at the speaker, active=false once the last sample has played or playback was stopped.
# Using the send time instead mutes too little: the robot then hears and transcribes itself.
#
# Consumers: speech recognition and diarization (the robot's voice is not a person and must not
# be enrolled as a speaker), face managers (lip animation), dialogue managers (barge-in).
# Publish with transient_local durability, depth 1, so late subscribers get the current state.

std_msgs/Header header   # stamp = when the state changed at the speaker

string utterance_id      # one id per utterance (e.g. per ExpressTTS goal)
string text              # the whole utterance being said
string language_code     # e.g. "ca", "es", "en"; empty if unknown
bool active              # true while the robot's voice is audible
