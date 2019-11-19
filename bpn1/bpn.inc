-- total number of different kinds of samples
VAL no.sample IS 10 :

-- back propagation network size
VAL no.input IS 121 :
VAL no.hidden.pe IS 48 :
VAL no.output.pe IS no.sample :
VAL no.pe IS (no.hidden.pe+no.output.pe) :

-- maximum number of channel in a group
VAL max.no.chan IS no.input+1 :

-- back propagation network control protocol
PROTOCOL BPN.CTRL
  CASE
    bpn.c.kill
    bpn.c.reset
    bpn.c.init
    bpn.c.learn
    bpn.c.operate
    bpn.c.load
    bpn.c.save
    bpn.c.change.learning.rate
:
