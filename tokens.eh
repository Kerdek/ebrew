export JID  () none
export JPCT () none
export JCHR () none
export JSTR () none
export JNUM () none

type
  TokenKind @()none

  Token {
    s @Token
    q TokenKind
    p S
    n N
  }

  K @Token
;