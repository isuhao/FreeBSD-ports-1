# Created by: Dmitry Sivachenko <dima@Chg.RU>
# $FreeBSD$

PORTNAME=	rrdtool
PORTVERSION=	1.4.8
PORTREVISION=	9
CATEGORIES=	databases graphics
MASTER_SITES=	http://oss.oetiker.ch/rrdtool/pub/

MAINTAINER=	zeising@FreeBSD.org
COMMENT=	Round Robin Database Tools

LICENSE=	GPLv2

CONFLICTS=	rrdtool10-* rrdtool12-*

USE_RC_SUBR=	rrdcached
USE_LDCONFIG=	yes
GNU_CONFIGURE=	yes
USES=		gmake libtool pathfix pkgconfig shebangfix
SHEBANG_FILES=	examples/rrdcached/rrdcached-size.pl
USE_GNOME=	glib20 libxml2
INSTALL_TARGET=	install-strip

CONFIGURE_ARGS=	--disable-tcl --disable-silent-rules

PORTEXAMPLES=	4charts.pl bigtops.pl cgi-demo.cgi minmax.pl perftest.pl \
		piped-demo.pl shared-demo.pl stripes.pl

OPTIONS_DEFINE=	DEJAVU GRAPH JSON MMAP NLS PERL_MODULE PYTHON_MODULE \
		RUBY_MODULE EXAMPLES DOCS
OPTIONS_DEFAULT=	GRAPH MMAP PERL_MODULE
GRAPH_DESC=		Enable the rrdtool graph command (needs cairo)
DEJAVU_DESC=		Use DejaVu fonts (requires X11)
JSON_DESC=		Support of json export
MMAP_DESC=		Use mmap in rrd_update
PERL_MODULE_DESC=	Build PERL module
PYTHON_MODULE_DESC=	Build PYTHON bindings
RUBY_MODULE_DESC=	Build RUBY bindings

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MPYTHON_MODULE}
USES+=		python
PLIST_SUB+=	WITH_PYTHON=""
CONFIGURE_ARGS+=	--enable-python
.else
CONFIGURE_ARGS+=	--disable-python
PLIST_SUB+=	WITH_PYTHON="@comment "
.endif

.if ${PORT_OPTIONS:MRUBY_MODULE}
USE_RUBY=	yes
.include "${PORTSDIR}/Mk/bsd.ruby.mk"
PLIST_SUB+=	WITH_RUBY=""
CONFIGURE_ARGS+=	--enable-ruby
.else
CONFIGURE_ARGS+=	--disable-ruby
PLIST_SUB+=	WITH_RUBY="@comment "
.endif

.if ${PORT_OPTIONS:MPERL_MODULE}
USES+=		perl5
USE_PERL5+=	build run
CONFIGURE_ARGS+=	--enable-perl --enable-perl-site-install
PLIST_SUB+=	WITH_PERL=""
.else
CONFIGURE_ARGS+=	--disable-perl
PLIST_SUB+=	WITH_PERL="@comment "
.endif

.if ! ${PORT_OPTIONS:MMMAP}
CONFIGURE_ARGS+=	--disable-mmap
.endif

.if ${PORT_OPTIONS:MJSON}
EXTRA_PATCHES+=		${FILESDIR}/thirdparty-json.diff
.endif

.if ${PORT_OPTIONS:MGRAPH}
LIB_DEPENDS+=	libfreetype.so:${PORTSDIR}/print/freetype2 \
		libpng.so:${PORTSDIR}/graphics/png
USE_GNOME+=	cairo pango
PLIST_SUB+=	WITH_GRAPH=""
.else
CONFIGURE_ARGS+=--disable-rrdcgi --disable-rrd_graph
PLIST_SUB+=	WITH_GRAPH="@comment "
.endif

.if ${PORT_OPTIONS:MNLS}
USES+=	gettext
USE_GNOME+=	intltool
.else
CONFIGURE_ARGS+=--disable-nls
.endif

.if exists(${LOCALBASE}/share/fonts/dejavu) || ${PORT_OPTIONS:MDEJAVU}
RUN_DEPENDS+=	dejavu>0:${PORTSDIR}/x11-fonts/dejavu
.endif

CPPFLAGS+=	-I${LOCALBASE}/include -I${LOCALBASE}/include/freetype2

post-extract:
.if ! ${PORT_OPTIONS:MDOCS}
	@${REINPLACE_CMD} -e '/^SUBDIRS = /s| doc | |' \
		${WRKSRC}/Makefile.in
.endif
.if ! ${PORT_OPTIONS:MEXAMPLES}
	@${REINPLACE_CMD} -e '/^SUBDIRS = /s| examples | |' \
		${WRKSRC}/Makefile.in
.endif
	@${REINPLACE_CMD} -E 's|(^rrdcached_LDADD = librrd_th.la)|\1 $$\(ALL_LIBS\)|' \
		${WRKSRC}/src/Makefile.in

	@${REINPLACE_CMD} -E 's|(^rrdtool_LDADD = librrd.la)|\1 $$\(ALL_LIBS\)|' \
		${WRKSRC}/src/Makefile.in

post-install:
.if !defined(BATCH) && ${PORT_OPTIONS:MEXAMPLES}
	@${ECHO_MSG} ""
	@${ECHO_MSG} "############################################################################"
	@${ECHO_MSG} "# See ${EXAMPLESDIR} for some demonstration code        #"
	@${ECHO_MSG} "############################################################################"
.endif
.if ${PORT_OPTIONS:MPERL_MODULE}
	${STRIP_CMD} ${STAGEDIR}${PREFIX}/${SITE_ARCH_REL}/auto/RRDs/RRDs.so
.endif

.include <bsd.port.mk>
