# Created by: Michael L. Hostbaek (mich@freebsdcluster.org)
# $FreeBSD$

PORTNAME=	braincurses
PORTVERSION=	1.0.0
CATEGORIES=	games

MAINTAINER=	mich@FreeBSD.org
COMMENT=	Clone of the Mastermind game

LICENSE=	GPLv2

USE_GITHUB=	yes
GH_ACCOUNT=	bderrly
GH_TAGNAME=	8f603c1

LDFLAGS+=	-L${LOCALBASE}/lib -lncurses

OPTIONS_DEFINE=	DOCS

do-build:
	cd ${WRKSRC} && \
	${CXX} -c -o windows/windows.o windows/windows.cpp && \
	${CXX} ${CFLAGS} -c ${PORTNAME}.cpp && \
	${CXX} ${CFLAGS} ${LDFLAGS} -o ${PORTNAME} windows/windows.o ${PORTNAME}.o

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${STAGEDIR}${PREFIX}/bin
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README.md ${STAGEDIR}${DOCSDIR}/README.md

.include <bsd.port.mk>
