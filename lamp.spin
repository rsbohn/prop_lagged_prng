{{ this drives the lamps on the QuickStart board }}

PUB on(n) | pin
  pin := (n // 8) + 16
  outa[pin] := 1
  dira[pin] := 1

pub off(n) | pin
  pin := (n // 8) + 16
  outa[pin] := 0
  dira[pin] := 1

pub chunk(a)
  dira[23..16]~~
  outa[23..16] := a
  