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

lann2.btl:	lann2.pgm f:\tek\itools\libs\hostio.inc \
	  f:\tek\itools\libs\linkaddr.inc la.inc main2.c4h lagrpl.c4h 
	$(CONFIG) lann2 /o lann2.btl $(CONFOPT)

main2.c4h:	main2.l4h main2.t4h 
	$(LINK) /f main2.l4h /o main2.c4h $(LINKOPT)

main2.t4h:	main2.occ f:\tek\itools\libs\hostio.inc \
	  f:\tek\itools\libs\hostio.lib f:\tek\itools\libs\hostio.liu \
	  f:\tek\itools\libs\convert.lib la.inc la2.t4h 
	$(OCCAM) main2 /t4 /h /o main2.t4h $(OCCOPT)

la2.t4h:	la2.occ f:\tek\itools\libs\hostio.inc f:\tek\itools\libs\hostio.lib \
	  f:\tek\itools\libs\hostio.liu f:\tek\itools\libs\convert.lib \
	  f:\tek\itools\libs\string.lib f:\tek\itools\libs\string.liu \
	  ..\lib\supp.lib la2.inc la.inc lape.t4h lagrp.t4h 
	$(OCCAM) la2 /t4 /h /o la2.t4h $(OCCOPT)

lape.t4h:	lape.occ f:\tek\itools\libs\hostio.inc \
	  f:\tek\itools\libs\hostio.lib f:\tek\itools\libs\hostio.liu \
	  f:\tek\itools\libs\convert.lib f:\tek\itools\libs\tbmaths.lib \
	  ..\lib\supp.lib la.inc 
	$(OCCAM) lape /t4 /h /o lape.t4h $(OCCOPT)

lagrp.t4h:	lagrp.occ f:\tek\itools\libs\hostio.inc \
	  f:\tek\itools\libs\hostio.lib f:\tek\itools\libs\hostio.liu \
	  f:\tek\itools\libs\convert.lib la.inc lape.t4h 
	$(OCCAM) lagrp /t4 /h /o lagrp.t4h $(OCCOPT)

lagrpl.c4h:	lagrpl.l4h lagrpl.t4h 
	$(LINK) /f lagrpl.l4h /o lagrpl.c4h $(LINKOPT)

lagrpl.t4h:	lagrpl.occ f:\tek\itools\libs\hostio.inc \
	  f:\tek\itools\libs\hostio.lib f:\tek\itools\libs\hostio.liu \
	  f:\tek\itools\libs\convert.lib la.inc lagrp.t4h 
	$(OCCAM) lagrpl /t4 /h /o lagrpl.t4h $(OCCOPT)
