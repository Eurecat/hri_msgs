# How this person's voice and face are associated, and why the person counts as speaking now.
# Filled by EutPersonManager (speaker_match_mode). Whether the person speaks is still
# face_recognition.is_speaking: this message says what that answer is based on.

string MODE_VSAD = "vsad"            # lips moving with the voice (visual speech activity)
string MODE_DIRECTION = "direction"  # direction the sound comes from against the face's position
string MODE_BOTH = "both"            # both, and they must not disagree

string SOURCE_LIPS = "lips"
string SOURCE_DIRECTION = "direction"
string SOURCE_BOTH = "lips+direction"

# speaker_match_mode of this robot (MODE_*)
string mode
# What made face_recognition.is_speaking true in this frame (SOURCE_*); empty when not speaking
string speaking_source
# Lips moving according to visual speech activity alone; false when it does not run
bool lips_moving
float32 lips_confidence
# Bearing of the face seen from the camera, degrees, REP-103: 0 along the optical axis,
# positive towards the image left. NaN without a face box.
float32 face_bearing_deg
# Direction of the speech heard in this frame, same convention; NaN in silence or without a
# sound direction source (EutSpeechAudioProcessing sound_direction)
float32 sound_azimuth_deg
