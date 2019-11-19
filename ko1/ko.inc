-- Kohonen Layer

VAL no.input IS 120 :
VAL no.sample IS 10 :
VAL no.pe IS no.sample :

PROTOCOL KO.CTRL
  CASE
    kc.kill
    kc.reset
    kc.init
    kc.learn
    kc.operate
    kc.load
    kc.save
    kc.change.learning.rate
:

PROTOCOL KO.LINK.IN
  CASE
    ki.config; INT; INT; INT                    -- no.of.pe; start.id; seed
    ki.kill
    ki.reset
    ki.init
    ki.learn; [no.input]REAL32; INT::[]INT      -- input; z.input
    ki.operate; [no.input]REAL32                -- input
    ki.load; INT; [no.input]REAL32              -- pe.id, weight
    ki.save; INT                                -- pe.id
    ki.change.learning.rate; REAL32             -- learning.rate
:

PROTOCOL KO.LINK.OUT
  CASE
    ko.operate; INT; INT::[]REAL32              -- start.id; output
    ko.save; INT; [no.input]REAL32              -- pe.id; weight
:
