CON


    POOL_SIZE = 64
    j = 31
    k = 63
    
VAR
  BYTE pool[POOL_SIZE]
  long n
  

PUB Setup
  pool[0] := 48
  pool[1] := 24
  pool[2] := $55
  n := 3
  
PUB Next_stage | v
  v := pool[(n+j) // POOL_SIZE] + pool[(n+k) // POOL_SIZE]
  pool[n // POOL_SIZE] := v
  n := n + 1
  return v
  