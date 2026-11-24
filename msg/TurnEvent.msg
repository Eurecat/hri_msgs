# One turn-taking event about the people talking to the robot (or to the agent behind a device).
#
# Published by the speech perception layer. Events are observations and opinions with a confidence;
# they never decide what the robot does. Whether to answer, wait, stop talking or say something on
# its own initiative is up to the behaviour layer (mission controller, dialogue runtime, app).
#
# Types (field `type`) and the fields each one uses:
#   user_speech         a person starts (active=true) or stops (active=false) talking.
#                       speaker_id, speaker_id_confidence, id (the utterance being opened/closed)
#   transcript          what was said. final=false: partial text that may still change.
#                       final=true: the text of a closed utterance. id, replaces, text, confidence,
#                       speaker_id, language_code, start, end
#   retract             a provisional utterance is taken back (the person went on talking).
#                       id, kind (reason)
#   user_continues      the agent is thinking about utterance `id` and the same person started talking
#                       again: "wait, listen a bit more". id, speaker_id, confidence
#   end_of_turn         opinion: the person has finished what they wanted to say. id, confidence,
#                       kind (reason: silence | punctuation | question | short_answer | speaker_change
#                       | forced), speaker_id
#   while_agent_speaks  someone talks while the agent's voice is audible. kind: backchannel |
#                       interruption. agent_utterance_id, text (may be empty for an early decision),
#                       confidence, speaker_id
#   floor               nobody (person or agent) is talking (active=true: the floor is free) or the
#                       silence ended (active=false). Global, not per person.
#
# Time: header.stamp is the moment in the audio the event refers to (onset, offset, end of the words),
# not the publish time. start/end give the span of the words for transcripts.

string TYPE_USER_SPEECH = "user_speech"
string TYPE_TRANSCRIPT = "transcript"
string TYPE_RETRACT = "retract"
string TYPE_USER_CONTINUES = "user_continues"
string TYPE_END_OF_TURN = "end_of_turn"
string TYPE_WHILE_AGENT_SPEAKS = "while_agent_speaks"
string TYPE_FLOOR = "floor"

std_msgs/Header header

string type
string id                     # utterance id, unique per session (e.g. "u12")
string[] replaces             # utterance ids this one supersedes
bool final                    # transcript: final (true) or partial (false)
bool active                   # user_speech: starts/stops; floor: free/taken
string text
float32 confidence            # [0-1] of the event itself (text, end of turn, kind); -1 = unknown
string speaker_id
float32 speaker_id_confidence
string language_code
string kind                   # end_of_turn: reason; while_agent_speaks: backchannel | interruption;
                              # retract: reason
string agent_utterance_id     # while_agent_speaks: the agent utterance being heard
float32 to_agent              # opinion [0-1]: is the person talking to the agent? -1 = unknown
builtin_interfaces/Time start # transcript: first word
builtin_interfaces/Time end   # transcript: last word
