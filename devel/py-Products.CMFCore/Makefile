# $FreeBSD$

PORTNAME=	Products.CMFCore
PORTVERSION=	2.2.10
CATEGORIES=	devel python zope
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DIST_SUBDIR=	zope

MAINTAINER=	zope@FreeBSD.org
COMMENT=	Zope Content Management Framework core components

LICENSE=	ZPL21
LICENSE_FILE=	${WRKSRC}/LICENSE.txt

BUILD_DEPENDS=	${PYTHON_PKGNAMEPREFIX}eggtestinfo>0:${PORTSDIR}/devel/py-eggtestinfo
RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}five.localsitemanager>=0:${PORTSDIR}/devel/py-five.localsitemanager \
		${PYTHON_PKGNAMEPREFIX}Products.GenericSetup>=0:${PORTSDIR}/devel/py-Products.GenericSetup \
		${PYTHON_PKGNAMEPREFIX}Products.ZSQLMethods>0:${PORTSDIR}/devel/py-Products.ZSQLMethods \
		${PYTHON_PKGNAMEPREFIX}zope.app.publication>0:${PORTSDIR}/devel/py-zope.app.publication

NO_ARCH=	yes
#USES=		zope # cyclic dependency
USES=		python:2.7
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
