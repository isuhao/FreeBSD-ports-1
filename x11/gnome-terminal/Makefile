# Created by: Joe Marcus Clarke <marcus@FreeBSD.org>
# $FreeBSD$

PORTNAME=	gnome-terminal
PORTVERSION=	3.16.2
CATEGORIES=	x11 gnome
MASTER_SITES=	GNOME
DIST_SUBDIR=	gnome3

MAINTAINER=	gnome@FreeBSD.org
COMMENT=	Terminal component for the GNOME 3 Desktop

BUILD_DEPENDS=	gsettings-desktop-schemas>=0:${PORTSDIR}/devel/gsettings-desktop-schemas \
		itstool:${PORTSDIR}/textproc/itstool \
		appstream-builder:${PORTSDIR}/devel/appstream-glib \
		vala:${PORTSDIR}/lang/vala
LIB_DEPENDS=	libstartup-notification-1.so:${PORTSDIR}/x11/startup-notification \
		libuuid.so:${PORTSDIR}/misc/e2fsprogs-libuuid
RUN_DEPENDS=	gsettings-desktop-schemas>=0:${PORTSDIR}/devel/gsettings-desktop-schemas

PORTSCOUT=	limitw:1,even

USES=		cpe gettext gmake libtool pathfix pkgconfig tar:xz
USE_GNOME=	dconf gtk30 intlhack nautilus3 vte3
USE_XORG=	sm ice
GNU_CONFIGURE=	yes
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib
INSTALL_TARGET=	install-strip
CPE_VENDOR=	gnome

GLIB_SCHEMAS=	org.gnome.Terminal.gschema.xml

OPTIONS_SUB=		yes
OPTIONS_DEFINE=		MIGRATION SEARCHPROVIDER
OPTIONS_DEFAULT=	SEARCHPROVIDER
SEARCHPROVIDER_DESC=	Gnome-shell search provider
SEARCHPROVIDER_CONFIGURE_ENABLE=	search-provider
SEARCHPROVIDER_BUILD_DEPENDS=	gnome-shell:${PORTSDIR}/x11/gnome-shell
SEARCHPROVIDER_RUN_DEPENDS=	gnome-shell:${PORTSDIR}/x11/gnome-shell
MIGRATION_CONFIGURE_ENABLE=	migration
MIGRATION_USE=		GNOME=gconf2
MIGRATION_DESC=		Profile migration to gsettings (pulls in gconf2)

.include <bsd.port.options.mk>

post-patch:
	@${TOUCH} ${WRKSRC}/aclocal.m4 ${WRKSRC}/Makefile.in \
		${WRKSRC}/configure ${WRKSRC}/config.h.in
.if ${OSVERSION} < 1000000
	@${REINPLACE_CMD} -e 's|-Wno-suggest-attribute=format||g ; \
		s|-Wno-unused-but-set-variable||g' \
		${WRKSRC}/src/Makefile.in
EXTRA_PATCHES+=	${FILESDIR}/extra-src_terminal-screen.c
.endif

post-install:
.for i in cs de el es fi fr gl hu pt_BR ru
	@${RMDIR} ${STAGEDIR}${PREFIX}/share/help/${i}/gnome-terminal/figures
.endfor

.include <bsd.port.mk>
