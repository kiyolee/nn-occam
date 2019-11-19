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

main.t4h:	main.occ f:\tek\itools\libs\hostio.inc \
	  f:\tek\itools\libs\hostio.lib f:\tek\itools\libs\hostio.liu \
	  f:\tek\itools\libs\convert.lib bpn.inc bpn.t4h 
	$(OCCAM) main /t4 /h /o main.t4h $(OCCOPT)

bpn.t4h:	bpn.occ f:\tek\itools\libs\hostio.inc f:\tek\itools\libs\hostio.lib \
	  f:\tek\itools\libs\hostio.liu f:\tek\itools\libs\convert.lib \
	  f:\tek\itools\libs\tbmaths.lib f:\tek\itools\libs\string.lib \
	  f:\tek\itools\libs\string.liu ..\lib\supp.lib bpn.inc hidpe.t4h outpe.t4h \
	  xcon.t4h 
	$(OCCAM) bpn /t4 /h /o bpn.t4h $(OCCOPT)

hidpe.t4h:	hidpe.occ f:\tek\itools\libs\hostio.inc \
	  f:\tek\itools\libs\hostio.lib f:\tek\itools\libs\hostio.liu \
	  f:\tek\itools\libs\convert.lib bpn.inc pesupp.t4h 
	$(OCCAM) hidpe /t4 /h /o hidpe.t4h $(OCCOPT)

pesupp.t4h:	pesupp.occ f:\tek\itools\libs\hostio.inc \
	  f:\tek\itools\libs\hostio.lib f:\tek\itools\libs\hostio.liu \
	  f:\tek\itools\libs\convert.lib f:\tek\itools\libs\tbmaths.lib bpn.inc \
	  ..\lib\supp.lib 
	$(OCCAM) pesupp /t4 /h /o pesupp.t4h $(OCCOPT)

outpe.t4h:	outpe.occ f:\tek\itools\libs\hostio.inc \
	  f:\tek\itools\libs\hostio.lib f:\tek\itools\libs\hostio.liu \
	  f:\tek\itools\libs\convert.lib bpn.inc pesupp.t4h 
	$(OCCAM) outpe /t4 /h /o outpe.t4h $(OCCOPT)

xcon.t4h:	xcon.occ f:\tek\itools\libs\hostio.inc \
	  f:\tek\itools\libs\hostio.lib f:\tek\itools\libs\hostio.liu \
	  f:\tek\itools\libs\convert.lib bpn.inc 
	$(OCCAM) xcon /t4 /h /o xcon.t4h $(OCCOPT)
