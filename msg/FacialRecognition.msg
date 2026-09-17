# The probability that volatile face_id is recognized_face_id 

std_msgs/Header header

string face_id
string recognized_face_id     # Persistent face identity (e.g. "U1"); empty when the face is not identified
float32 confidence            # Match score of face_id against recognized_face_id [0.0-1.0]

# Identity maturity of recognized_face_id
uint8 IDENTITY_UNKNOWN=0      # Not identified (unmatched, or face too poor to trust)
uint8 IDENTITY_TENTATIVE=1    # Young identity, still gathering evidence; may be merged or dropped
uint8 IDENTITY_CONFIRMED=2    # Stable identity, persisted; safe to use as a long-term key
uint8 identity_status

float32 face_quality          # Quality of this face observation [0.0-1.0] (detection confidence and head yaw)

# Visual speaking activity detection
bool is_speaking              # Whether the person is currently speaking (visual VAD)
float32 speaking_confidence   # Confidence of speaking detection [0.0-1.0]
