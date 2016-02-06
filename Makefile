# icb Makefile

CC?= cc
PROG= icb
OBJS= icb.o strlcpy.o
CFLAGS+= -Os -pipe -ffunction-sections -fdata-sections
LDFLAGS+= -Wl,--gc-sections
PREFIX?= /usr/local

all: ${OBJS}
	${CC} ${LDFLAGS} -o ${PROG} ${OBJS}

install:
	install -c -s -m 555 -o root -g bin ${PROG} ${DESTDIR}${PREFIX}/bin

clean:
	rm -f ${PROG} ${OBJS} *~
