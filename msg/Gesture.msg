# Describes body language/attitude/gesture detected from a body.
std_msgs/Header header

# Additional gestures might be added in the future, please open
# issues/pull requests to suggest new ones.

# gesture constants
uint8 HANDS_ON_FACE = 1
uint8 ARMS_CROSSED = 2
uint8 LEFT_HAND_RAISED = 3
uint8 RIGHT_HAND_RAISED = 4
uint8 BOTH_HANDS_RAISED = 5
uint8 WAVING = 6 # eg, greeting someone with the hand
uint8 CLOSED_FIST = 7
uint8 OPEN_PALM = 8
uint8 POINTING_UP = 9
uint8 THUMB_DOWN = 10
uint8 THUMB_UP = 11
uint8 VICTORY = 12
uint8 LOVE = 13

uint8 OTHER = 0

# canonical gesture_id values
string GESTURE_ID_OTHER = "other"
string GESTURE_ID_OPEN_PALM = "open_palm"
string GESTURE_ID_CLOSED_FIST = "closed_fist"
string GESTURE_ID_POINTING_UP = "pointing_up"
string GESTURE_ID_THUMB_UP = "thumb_up"
string GESTURE_ID_THUMB_DOWN = "thumb_down"
string GESTURE_ID_VICTORY = "victory"
string GESTURE_ID_LOVE = "love"
string GESTURE_ID_WAVING = "waving"

# gesture handedness
uint8 RIGHT = 1
uint8 LEFT = 2

uint8 INDEPENDENT = 0

string gesture_id
string skeleton_id
NormalizedRegionOfInterest2D bbox_xyxy

uint8 gesture # one of the above gesture constants
uint8 handedness # one of the above handedness constants 