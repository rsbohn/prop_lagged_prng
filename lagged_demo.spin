CON

    _clkmode        = xtal1 + pll16x
    _xinfreq        = 5_000_000

OBJ
  prng : "lagged"
  lamp : "lamp"

PUB main
  prng.setup
  repeat 
    lamp.chunk(prng.next_stage)
    sleep(200)

PUB sleep(msec)
  waitcnt((clkfreq/1000)*msec + cnt)