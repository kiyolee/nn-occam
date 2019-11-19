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

konn2.btl:	konn2.pgm f:\tek\itools\libs\hostio.inc \
	  f:\tek\itools\libs\linkaddr.inc ko.inc main2.c4h kogrpl.c4h 
	$(CONFIG) konn2 /o konn2.btl $(CONFOPT)

main2.c4h:	main2.l4h main2.t4h 
	$(LINK) /f main2.l4h /o main2.c4h $(LINKOPT)

main2.t4h:	main2.occ f:\tek\itools\libs\hostio.inc \
	  f:\tek\itools\libs\hostio.lib f:\tek\itools\libs\hostio.liu \
	  f:\tek\itools\libs\convert.lib ko.inc ko2.t4h 
	$(OCCAM) main2 /t4 /h /o main2.t4h $(OCCOPT)

ko2.t4h:	ko2.occ f:\tek\itools\libs\hostio.inc f:\tek\itools\libs\hostio.lib \
	  f:\tek\itools\libs\hostio.liu f:\tek\itools\libs\convert.lib \
	  f:\tek\itools\libs\string.lib f:\tek\itools\libs\string.liu \
	  ..\lib\supp.lib ko2.inc ko.inc kope.t4h kogrp.t4h 
	$(OCCAM) ko2 /t4 /h /o ko2.t4h $(OCCOPT)

kope.t4h:	kope.occ f:\tek\itools\libs\hostio.inc \
	  f:\tek\itools\libs\hostio.lib f:\tek\itools\libs\hostio.liu \
	  f:\tek\itools\libs\convert.lib f:\tek\itools\libs\tbmaths.lib \
	  ..\lib\supp.lib ko.inc 
	$(OCCAM) kope /t4 /h /o kope.t4h $(OCCOPT)

kogrp.t4h:	kogrp.occ f:\tek\itools\libs\hostio.inc \
	  f:\tek\itools\libs\hostio.lib f:\tek\itools\libs\hostio.liu \
	  f:\tek\itools\libs\convert.lib ko.inc kope.t4h 
	$(OCCAM) kogrp /t4 /h /o kogrp.t4h $(OCCOPT)

kogrpl.c4h:	kogrpl.l4h kogrpl.t4h 
	$(LINK) /f kogrpl.l4h /o kogrpl.c4h $(LINKOPT)

kogrpl.t4h:	kogrpl.occ f:\tek\itools\libs\hostio.inc \
	  f:\tek\itools\libs\hostio.lib f:\tek\itools\libs\hostio.liu \
	  f:\tek\itools\libs\convert.lib ko.inc kogrp.t4h 
	$(OCCAM) kogrpl /t4 /h /o kogrpl.t4h $(OCCOPT)
