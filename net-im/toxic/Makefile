# Created by: Thierry Thomas <thierry@pompo.net>
# $FreeBSD$

PORTNAME=	toxic
PORTVERSION=	0.7.0.151113
PORTREVISION=	2
CATEGORIES=	net-im

MAINTAINER=	thierry@FreeBSD.org
COMMENT=	Console client for Tox

LICENSE=	GPLv3+
LICENSE_FILE=	${WRKSRC}/COPYING

BUILD_DEPENDS=	${LOCALBASE}/lib/libtoxcore.a:${PORTSDIR}/net-im/tox	\
		${LOCALBASE}/include/linux/videodev2.h:${PORTSDIR}/multimedia/v4l_compat
LIB_DEPENDS=	libvpx.so:${PORTSDIR}/multimedia/libvpx		\
		libopus.so:${PORTSDIR}/audio/opus		\
		libcurl.so:${PORTSDIR}/ftp/curl			\
		libv4l2.so:${PORTSDIR}/multimedia/libv4l	\
		libqrencode.so:${PORTSDIR}/graphics/libqrencode	\
		libconfig.so:${PORTSDIR}/devel/libconfig
RUN_DEPENDS=	${LOCALBASE}/lib/libtoxcore.a:${PORTSDIR}/net-im/tox

USE_GITHUB=	yes
GH_ACCOUNT=	Tox
GH_TAGNAME=	9f0feb7

OPTIONS_DEFINE=	X11
OPTIONS_DEFAULT=X11

X11_USE=	XORG=x11
X11_MAKE_ARGS_OFF=	DISABLE_X11=1 DISABLE_DESKTOP_NOTIFY=1
X11_LIB_DEPENDS=libnotify.so:${PORTSDIR}/devel/libnotify

MAKE_ENV=	USER_CFLAGS="${CFLAGS}" USER_LDFLAGS="${LDFLAGS}"
SUB_FILES=	pkg-message

USES=		desktop-file-utils gmake ncurses openal:al,alut pkgconfig

pre-configure:
	${REINPLACE_CMD} -e 's|PREFIX =|PREFIX?=|;s|$$(shell git rev-list HEAD.*$$|${GH_TAGNAME}|'	\
		${WRKSRC}/cfg/global_vars.mk

post-install:
	${RM} ${STAGEDIR}${MANPREFIX}/man/man1/toxic.1-e ${STAGEDIR}${MANPREFIX}/man/man5/toxic.conf.5-e
	${STRIP_CMD} ${STAGEDIR}${PREFIX}/bin/toxic

.include <bsd.port.mk>
