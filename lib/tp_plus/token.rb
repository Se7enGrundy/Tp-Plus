module TPPlus
  class Token
    KEYWORDS = {
        "abort" => :ABORT,
        "acc" => :ACC,
        "after" => :AFTER,
        "at" => :AT,
        "arc_move" => :MOVE,
        "case" => :CASE,
        "coord" => :COORD,
        "pth" => :PTH,
        "increment" => :INC,
        "minimal_rotation" => :MROT,
        "mrot" => :MROT,
        "wrist_joint" => :WJNT,
        "wjnt" => :WJNT,
        "break" => :BREAK,
        "circular_move" => :MOVE,
        "elsif" => :ELSIF,
        "else" => :ELSE,
        "end" => :END,
        "eval" => :EVAL,
        "for" => :FOR,
        "mid" => :MID,
        "get_joint_position" => :JPOS,
        "get_linear_position" => :LPOS,
        "group" => :GROUP,
        "if" => :IF,
        "indirect" => :INDIRECT,
        "then" => :THEN,
        "in" => :IN,
        "joint_move" => :MOVE,
        "jump_to" => :JUMP,
        "linear_move" => :MOVE,
        "message" => :MESSAGE,
        "namespace" => :NAMESPACE,
        "offset" => :OFFSET,
        "pause" => :PAUSE,
        "position_data" => :POSITION_DATA,
        "pulse" => :IO_METHOD,
        "raise" => :RAISE,
        "reset" => :TIMER_METHOD,
        "restart" => :TIMER_METHOD,
        "return" => :RETURN,
        "run" => :RUN,
        "skip_to" => :SKIP,
        "start" => :TIMER_METHOD,
        "stop" => :TIMER_METHOD,
        "term" => :TERM,
        "time_after" => :TIME_SEGMENT,
        "time_before" => :TIME_SEGMENT,
        "timeout_to" => :TIMEOUT,
        "toggle" => :IO_METHOD,
        "tool_offset" => :OFFSET,
        "turn_on" => :IO_METHOD,
        "turn_off" => :IO_METHOD,
        "to" => :TO,
        "unless" => :UNLESS,
        "vision_offset" => :OFFSET,
        "warning" => :WARNING,
        "wait_for" => :WAIT_FOR,
        "wait_until" => :WAIT_UNTIL,
        "when" => :WHEN,
        "while" => :WHILE,

        "DIV" => :DIV,
        "system" => :SYSTEM,

        "true" => :TRUE_FALSE,
        "false" => :TRUE_FALSE,

        "TP_IGNORE_PAUSE" => :TP_HEADER,
        "TP_COMMENT" => :TP_HEADER,
        "TP_GROUPMASK" => :TP_HEADER,
        "TP_SUBTYPE" => :TP_HEADER,

        "set_skip_condition" => :SET_SKIP_CONDITION,
        "use_payload" => :FANUC_USE,
        "use_uframe" => :FANUC_USE,
        "use_utool" => :FANUC_USE
      }


    DATA = {
        "R" => :NUMREG,
        "P" => :POSITION,
        "PR" => :POSREG,
        "VR" => :VREG,
        "SR" => :SREG,
        "AR" => :ARG,
        "TIMER" => :TIMER,
        "UALM" => :UALM,

        "SIN" => :OPERATION,
        "COS" => :OPERATION,
        "TAN" => :OPERATION,
        "ASIN" => :OPERATION,
        "ACOS" => :OPERATION,
        "ATAN" => :OPERATION,
        "ATAN2" => :OPERATION,
        "SQRT" => :OPERATION,
        "LN" => :OPERATION,
        "EXP" => :OPERATION,
        "ABS" => :OPERATION,
        "TRUNC" => :OPERATION,
        "ROUND" => :OPERATION,

        "F" => :OUTPUT,
        "AO" => :OUTPUT,
        "DO" => :OUTPUT,
        "RO" => :OUTPUT,
        "UO" => :OUTPUT,
        "SO" => :OUTPUT,
        "GO" => :OUTPUT,

        "AI" => :INPUT,
        "DI" => :INPUT,
        "RI" => :INPUT,
        "UI" => :INPUT,
        "SI" => :INPUT,
        "GI" => :INPUT
      }

    def self.lookup(string)
      KEYWORDS[string] || :WORD
    end

    def self.lookup_data(string)
      DATA[string] || :WORD
    end
  end
end
