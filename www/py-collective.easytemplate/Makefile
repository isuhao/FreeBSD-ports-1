# Created by: Michelle Sullivan <michelle@sorbs.net>
# $FreeBSD$

PORTNAME=	collective.easytemplate
PORTVERSION=	0.8.0
CATEGORIES=	www python zope
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DIST_SUBDIR=	zope

MAINTAINER=	michelle@sorbs.net
COMMENT=	Dynamic HTML generation and scripting for Plone

LICENSE=	GPLv2

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}Products.CMFCore>=2.1.0:${PORTSDIR}/devel/py-Products.CMFCore \
		${PYTHON_PKGNAMEPREFIX}Jinja2>=2.7.3:${PORTSDIR}/devel/py-Jinja2 \
		${PYTHON_PKGNAMEPREFIX}plone.portlet.static>=0:${PORTSDIR}/www/py-plone.portlet.static \
		${PYTHON_PKGNAMEPREFIX}feedparser>=0:${PORTSDIR}/textproc/py-feedparser \
		${PYTHON_PKGNAMEPREFIX}collective.templateengines>=0.3:${PORTSDIR}/www/py-collective.templateengines

USES=		python:2 zip
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
