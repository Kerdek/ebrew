type
  TokenKind @()none
  TypeKind  @()none

  N nat
  C byte
  S @C

  Token {
    s @Token
    q TokenKind
    p S
    n N
  }

  K @Token

  Type {
    s      @Type
    a      @Type
    q       TypeKind
    k       K
    size    N
    align   N
    offset  N
  }

  T @Type

;
