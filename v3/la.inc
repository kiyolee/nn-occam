-- linear associator size
VAL no.input IS 120 :
VAL no.sample IS 10 :
VAL no.pe IS no.sample :

-- linear associator control protocol
PROTOCOL LA.CTRL
  CASE
    kill
    reset
    init
    learn
    operate
    load
    save
    change.learning.rate
:
