issp (c byte    ) nat = (c == ' ' )
istb (c byte    ) nat = (c == '\t')
islf (c byte    ) nat = (c == '\n')
iscr (c byte    ) nat = (c == '\r')
is_  (c byte    ) nat = (c == '_' )

isin(c byte a byte b byte) nat = (a <= c and c <= b)

isAZ (c byte    ) nat = isin c 'A' 'Z'
isaz (c byte    ) nat = isin c 'a' 'z'
is09 (c byte    ) nat = isin c '0' '9'
isaf (c byte    ) nat = isin c 'a' 'f'
isws (c byte    ) nat = { issp c else
                          istb c else
                          islf c else
                          iscr c      }
is0f (c byte    ) nat = { is09 c else
                          isaf c      }
isid (c byte    ) nat = { isAZ c else
                          isaz c else
                          is09 c else
                          is_  c      }