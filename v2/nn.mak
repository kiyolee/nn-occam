LIBRARIAN=ilibr
OCCAM=occam
LINK=ilink
CONFIG=iconf
ADDBOOT=iboot
LIBOPT=
OCCOPT=
LINKOPT=
CONFOPT=
BOOTOPT=

nn.b4h:	nn.c4h 
	$(ADDBOOT) nn.c4h /o nn.b4h $(BOOTOPT)

nn.c4h:	nn.l4h nn.t4h 
	$(LINK) /f nn.l4h /o nn.c4h $(LINKOPT)

nn.t4h:	nn.occ d:\itools\libs\hostio.inc d:\itools\libs\hostio.lib \
	  d:\itools\libs\hostio.liu d:\itools\libs\convert.lib la.inc pe.inc la.t4h \
	  rand.t4h fdrd.t4h waitkey.t4h 
	$(OCCAM) nn /t4 /h /o nn.t4h $(OCCOPT)

la.t4h:	la.occ d:\itools\libs\hostio.inc d:\itools\libs\hostio.lib \
	  d:\itools\libs\hostio.liu d:\itools\libs\convert.lib rand.t4h la.inc \
	  pe.inc 
	$(OCCAM) la /t4 /h /o la.t4h $(OCCOPT)

rand.t4h:	rand.occ d:\itools\libs\tbmaths.lib 
	$(OCCAM) rand /t4 /h /o rand.t4h $(OCCOPT)

fdrd.t4h:	fdrd.occ d:\itools\libs\hostio.inc d:\itools\libs\hostio.lib \
	  d:\itools\libs\hostio.liu d:\itools\libs\convert.lib \
	  d:\itools\libs\string.lib d:\itools\libs\string.liu la.inc pe.inc 
	$(OCCAM) fdrd /t4 /h /o fdrd.t4h $(OCCOPT)

waitkey.t4h:	waitkey.occ d:\itools\libs\hostio.inc d:\itools\libs\hostio.lib \
	  d:\itools\libs\hostio.liu d:\itools\libs\convert.lib 
	$(OCCAM) waitkey /t4 /h /o waitkey.t4h $(OCCOPT)

