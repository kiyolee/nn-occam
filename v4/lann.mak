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

lann.btl:	lann.pgm f:\tek\itools\libs\hostio.inc \
	  f:\tek\itools\libs\linkaddr.inc la.inc main.c4h lagrp.c4h 
	$(CONFIG) lann /o lann.btl $(CONFOPT)

main.c4h:	main.l4h main.t4h 
	$(LINK) /f main.l4h /o main.c4h $(LINKOPT)

main.t4h:	main.occ f:\tek\itools\libs\hostio.inc \
	  f:\tek\itools\libs\hostio.lib f:\tek\itools\libs\hostio.liu \
	  f:\tek\itools\libs\convert.lib la.inc la.t4h 
	$(OCCAM) main /t4 /h /o main.t4h $(OCCOPT)

la.t4h:	la.occ f:\tek\itools\libs\hostio.inc f:\tek\itools\libs\hostio.lib \
	  f:\tek\itools\libs\hostio.liu f:\tek\itools\libs\convert.lib \
	  f:\tek\itools\libs\string.lib f:\tek\itools\libs\string.liu \
	  ..\lib\supp.lib la.inc lape.t4h 
	$(OCCAM) la /t4 /h /o la.t4h $(OCCOPT)

lape.t4h:	lape.occ f:\tek\itools\libs\hostio.inc \
	  f:\tek\itools\libs\hostio.lib f:\tek\itools\libs\hostio.liu \
	  f:\tek\itools\libs\convert.lib f:\tek\itools\libs\tbmaths.lib \
	  ..\lib\supp.lib la.inc 
	$(OCCAM) lape /t4 /h /o lape.t4h $(OCCOPT)

lagrp.c4h:	lagrp.l4h lagrp.t4h 
	$(LINK) /f lagrp.l4h /o lagrp.c4h $(LINKOPT)

lagrp.t4h:	lagrp.occ f:\tek\itools\libs\hostio.inc \
	  f:\tek\itools\libs\hostio.lib f:\tek\itools\libs\hostio.liu \
	  f:\tek\itools\libs\convert.lib la.inc lape.t4h 
	$(OCCAM) lagrp /t4 /h /o lagrp.t4h $(OCCOPT)
