# Created by: Fernando Apesteguia <fernando.apesteguia@gmail.com>
# $FreeBSD$

PORTNAME=	visualparadigm
PORTVERSION=	13.0.20160103
CATEGORIES=	devel
MASTER_SITES=	http://eu6.visual-paradigm.com/visual-paradigm/vpce13.0/20160103/
DISTNAME=	Visual_Paradigm_CE_13_0_20160103_Unix_InstallFree

MAINTAINER=	fernando.apesteguia@gmail.com
COMMENT=	Visual modeling tool for all kinds of UML diagrams

RUN_DEPENDS=	${LOCALBASE}/lib/libsqlitejdbc.so:${PORTSDIR}/java/sqlitejdbc

USE_JAVA=	yes
JAVA_VERSION=	1.8+
JAVA_OS=	linux
NO_BUILD=	yes

WRKSRC=		${WRKDIR}

INSTALLDIR=	${STAGEDIR}${PREFIX}/${PORTNAME}

EXTRACT_NAME=	Visual_Paradigm_CE_13.0

FETCH_ARGS=	-Fpr

post-patch:
	${FIND} ${WRKSRC} -name *.dll -delete -or -name *.exe -delete -or -name *.orig -delete

do-install:
	${MKDIR} ${INSTALLDIR}
	cd ${WRKSRC}/${EXTRACT_NAME} && ${COPYTREE_SHARE} \* ${INSTALLDIR} && ${CP} -R .install4j ${INSTALLDIR}

.include <bsd.port.mk>
