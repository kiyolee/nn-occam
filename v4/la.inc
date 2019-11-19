-- linear associator size
VAL no.input IS 121 :
VAL no.sample IS 10 :
VAL no.pe IS no.sample :

-- linear associator control protocol
PROTOCOL LA.CTRL
  CASE
    lc.kill
    lc.reset
    lc.init
    lc.learn
    lc.operate
    lc.load
    lc.save
    lc.change.learning.rate
:

PROTOCOL LA.LINK.IN
  CASE
    li.config; INT; INT; INT                    -- no.of.pe; start.id; seed
    li.kill
    li.reset
    li.init
    li.learn; [no.input]REAL32; INT::[]REAL32   -- input; learn.input
    li.operate; [no.input]REAL32                -- input
    li.load; INT; [no.input]REAL32              -- pe.id, weight
    li.save; INT                                -- pe.id
    li.change.learning.rate; REAL32             -- learning.rate
:

PROTOCOL LA.LINK.OUT
  CASE
    lo.operate; INT; INT::[]REAL32              -- start.id; output
    lo.save; INT; [no.input]REAL32              -- pe.id; weight
:
