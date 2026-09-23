# Describes the general body posture in a symbolic manner.
std_msgs/Header header

uint8 STANDING = 1
uint8 SITTING = 2
uint8 CROUCHING = 3
uint8 LAYING = 4
uint8 BENDING = 5    # torso bent forward at the hips, legs mostly straight
uint8 KNEELING = 6   # one or both knees on the ground, torso upright
uint8 WALKING = 7    # standing posture with sustained hip displacement across frames

uint8 OTHER = 0

string skeleton_id
uint8 posture # one of the above constants
float32 confidence # [0-1] heuristic confidence of the classification
