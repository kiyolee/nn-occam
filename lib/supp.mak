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

supp.lib:	supp.lbb rand.t4h waitkey.t4h supp.t4h fdrd.t4h dataio.t4h 
	$(LIBRARIAN) /f supp.lbb  /o supp.lib $(LIBOPT)

rand.t4h:	rand.occ f:\tek\itools\libs\tbmaths.lib 
	$(OCCAM) rand /t4 /h /o rand.t4h $(OCCOPT)

waitkey.t4h:	waitkey.occ f:\tek\itools\libs\hostio.inc \
	  f:\tek\itools\libs\hostio.lib f:\tek\itools\libs\hostio.liu \
	  f:\tek\itools\libs\convert.lib 
	$(OCCAM) waitkey /t4 /h /o waitkey.t4h $(OCCOPT)

supp.t4h:	supp.occ f:\tek\itools\libs\hostio.inc \
	  f:\tek\itools\libs\hostio.lib f:\tek\itools\libs\hostio.liu \
	  f:\tek\itools\libs\convert.lib f:\tek\itools\libs\string.lib \
	  f:\tek\itools\libs\string.liu rand.t4h waitkey.t4h 
	$(OCCAM) supp /t4 /h /o supp.t4h $(OCCOPT)

fdrd.t4h:	fdrd.occ f:\tek\itools\libs\hostio.inc \
	  f:\tek\itools\libs\hostio.lib f:\tek\itools\libs\hostio.liu \
	  f:\tek\itools\libs\convert.lib supp.t4h 
	$(OCCAM) fdrd /t4 /h /o fdrd.t4h $(OCCOPT)

dataio.t4h:	dataio.occ f:\tek\itools\libs\hostio.inc \
	  f:\tek\itools\libs\hostio.lib f:\tek\itools\libs\hostio.liu \
	  f:\tek\itools\libs\convert.lib 
	$(OCCAM) dataio /t4 /h /o dataio.t4h $(OCCOPT)

