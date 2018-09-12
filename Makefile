PROG=	uclcmd
SRCS=	\
	uclcmd.c \
	uclcmd_common.c \
	uclcmd_get.c \
	uclcmd_merge.c \
	uclcmd_output.c \
	uclcmd_parse.c \
	uclcmd_remove.c \
	uclcmd_set.c
MAN=

.if defined(PREFIX)
BINDIR?=	${PREFIX}/bin
.else
BINDIR?=	/usr/bin
.endif

CFLAGS+=	-I/usr/local/include
LDFLAGS+=	-L/usr/local/lib

LDADD=	-lucl

.include <bsd.prog.mk>
