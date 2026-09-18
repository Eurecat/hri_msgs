# A boolean state derived from a wearable's physiological features by a
# configured rule, e.g. "is_nervous" from heart rate above the wearer's own
# resting baseline. Rules are defined in YAML by the publishing node, so the
# set of states is not fixed by this message.
std_msgs/Header header

# Rule name, e.g. "is_nervous".
string name

bool state

# The metric value the rule was evaluated on.
float32 value

# The threshold it was compared against.
float32 threshold

# Human-readable explanation of why the rule fired or did not, so the decision
# can be traced without re-deriving it from the inputs.
string reason

# False when required inputs were missing or stale, in which case state is
# held at its default rather than computed.
bool valid
