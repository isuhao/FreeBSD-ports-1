# $FreeBSD$

PORTNAME=	nss_compat_ossl
PORTVERSION=	0.9.6
CATEGORIES=	security devel
MASTER_SITES=	http://rcritten.fedorapeople.org/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Source-level compatibility library for OpenSSL to NSS porting

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/COPYING

LIB_DEPENDS=	libnspr4.so:${PORTSDIR}/devel/nspr \
		libnss3.so:${PORTSDIR}/security/nss

GNU_CONFIGURE=	yes
USES=		pkgconfig libtool
INSTALL_TARGET=	install-strip
USE_LDCONFIG=	yes

.include <bsd.port.mk>
