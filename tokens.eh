export JID  () none
export JPCT () none
export JCHR () none
export JSTR () none
export JNUM () none

type
  TokenKind @() none

  Token {
    s @Token
    q TokenKind
    p @byte
    n nat
    line nat
    col nat
  }

  K @Token
;

export tokens (k @K p @byte) none
