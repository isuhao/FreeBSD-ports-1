# Created by: Radim Kolar
# $FreeBSD$

PORTNAME=	advancecomp
PORTVERSION=	1.19
PORTREVISION=	1
CATEGORIES=	archivers
MASTER_SITES=	SF/advancemame/${PORTNAME}/${PORTVERSION}

MAINTAINER=	danilo@FreeBSD.org
COMMENT=	Recompression utilities for .ZIP, .PNG, .MNG, and .GZ files

LICENSE=	GPLv3

LIB_DEPENDS=	libzopfli.so:${PORTSDIR}/archivers/zopfli

USES=		gmake
GNU_CONFIGURE=	yes
MAKE_ARGS=	zopfli_SOURCES="" am__objects_2=""
CPPFLAGS+=	-I${LOCALBASE}/include/zopfli
LDFLAGS+=	-L${LOCALBASE}/lib -lzopfli

.include <bsd.port.mk>
