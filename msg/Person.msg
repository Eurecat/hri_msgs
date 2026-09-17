string person_id          # Canonical, immutable person identity (e.g. person_<uuid>)
string preferred_name     # Human-readable name metadata; empty if unknown. Never an identity key
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