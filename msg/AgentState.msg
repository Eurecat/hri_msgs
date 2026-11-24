# What the agent behind the robot (or device) is doing, as seen by turn taking.
#
# Published by the behaviour layer (dialogue runtime, mission controller adapter, app). Speech
# perception uses it to give better opinions: while the agent is thinking, more speech from the same
# person means "wait, listen a bit more"; while it waits for an answer, a short "yes" is a complete
# turn; while it speaks, speech is a backchannel or an interruption.
# Whether the voice is audible right now is RobotSpeech (play-out); this message is the intent.
# Publish on change, with transient_local durability, depth 1.

string IDLE = "idle"
string THINKING = "thinking"              # preparing an answer (LLM, planning)
string SPEAKING = "speaking"              # its voice was asked to play
string WAITING_ANSWER = "waiting_answer"  # asked something and expects an answer
string BUSY = "busy"                      # executing a task (navigation, manipulation...)

std_msgs/Header header        # stamp = when the state changed

string state
string responding_to          # utterance id (TurnEvent.id) it is thinking about or answering
string utterance_id           # its own utterance (same id as RobotSpeech) while speaking
bool uninterruptible          # true for greetings or warnings that must not be cut (default: may be cut)
float32 expect_answer_s       # waiting_answer: how long it waits; 0 = not set
string addressee              # speaker_id it talks to or waits for; empty = whoever
