string person_id          # Canonical, immutable person identity (e.g. person_<uuid>)
string preferred_name     # Human-readable name metadata; empty if unknown. Never an identity key

# How person_id was resolved in this frame:
#   "face"  - recognized face linked to the person
#   "body"  - face hidden or not recognized; the body appearance (body_profile_id)
#             is linked to the person
#   "voice" - only heard: an active speaker linked to the person, not visible
#   ""      - transient id (temp_person_<face_id>, temp_voice_<speaker_id>)
string identity_source
# Persistent body appearance id of this body from TIPS (tips_visual_embedder
# Object_N of the "person" detection), e.g. "Object_17"; empty if none.
# Weaker than the face: it changes with clothes.
string body_profile_id
SoftBiometrics soft_biometrics

# Bounding boxes
Entity visual_detection

# Speech info
SpeechActivityDetection speech_activity
SpeechResult speech_result

# Body info
Skeleton2D skeleton
BodyPosture posture

Gesture[] gestures

# Face info
FacialLandmarks face_landmarks
FacialRecognition face_recognition
Gaze gaze

# Physiological info from a wearable assigned to this person (assign_wearable
# service). Empty wearable_id means no wearable is linked, in which case every
# other field here is meaningless.
WearablePhysiology physiology