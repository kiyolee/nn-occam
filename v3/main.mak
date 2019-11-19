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

main.b4h:	main.c4h 
	$(ADDBOOT) main.c4h /o main.b4h $(BOOTOPT)

main.c4h:	main.l4h main.t4h 
	$(LINK) /f main.l4h /o main.c4h $(LINKOPT)

main.t4h:	main.occ d:\itools\libs\hostio.inc d:\itools\libs\hostio.lib \
	  d:\itools\libs\hostio.liu d:\itools\libs\convert.lib nn.t4h 
	$(OCCAM) main /t4 /h /o main.t4h $(OCCOPT)

nn.t4h:	nn.occ d:\itools\libs\hostio.inc d:\itools\libs\hostio.lib \
	  d:\itools\libs\hostio.liu d:\itools\libs\convert.lib la.inc la.t4h \
	  rand.t4h fdrd.t4h waitkey.t4h supp.t4h 
	$(OCCAM) nn /t4 /h /o nn.t4h $(OCCOPT)

la.t4h:	la.occ d:\itools\libs\hostio.inc d:\itools\libs\hostio.lib \
	  d:\itools\libs\hostio.liu d:\itools\libs\convert.lib rand.t4h waitkey.t4h \
	  supp.t4h la.inc 
	$(OCCAM) la /t4 /h /o la.t4h $(OCCOPT)

rand.t4h:	rand.occ d:\itools\libs\tbmaths.lib 
	$(OCCAM) rand /t4 /h /o rand.t4h $(OCCOPT)

waitkey.t4h:	waitkey.occ d:\itools\libs\hostio.inc d:\itools\libs\hostio.lib \
	  d:\itools\libs\hostio.liu d:\itools\libs\convert.lib 
	$(OCCAM) waitkey /t4 /h /o waitkey.t4h $(OCCOPT)

supp.t4h:	supp.occ d:\itools\libs\hostio.inc d:\itools\libs\hostio.lib \
	  d:\itools\libs\hostio.liu d:\itools\libs\convert.lib la.inc fdrd.t4h \
	  rand.t4h waitkey.t4h 
	$(OCCAM) supp /t4 /h /o supp.t4h $(OCCOPT)

fdrd.t4h:	fdrd.occ d:\itools\libs\hostio.inc d:\itools\libs\hostio.lib \
	  d:\itools\libs\hostio.liu d:\itools\libs\convert.lib \
	  d:\itools\libs\string.lib d:\itools\libs\string.liu la.inc 
	$(OCCAM) fdrd /t4 /h /o fdrd.t4h $(OCCOPT)

