# Created by: milki <milki@rescomp.berkeley.edu>
# $FreeBSD$

PORTNAME=	MooseX-Types-JSON
PORTVERSION=	0.03
PORTREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:MILA
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	JSON and relaxedJSON datatype for Moose

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

TEST_DEPENDS=	p5-Test-Pod>=1.00:${PORTSDIR}/devel/p5-Test-Pod
RUN_DEPENDS=	p5-Moose>=0.82:${PORTSDIR}/devel/p5-Moose \
		p5-MooseX-Types>=0.15:${PORTSDIR}/devel/p5-MooseX-Types \
		p5-JSON-XS>=2.00:${PORTSDIR}/converters/p5-JSON-XS

USES=		perl5
USE_PERL5=	configure

.include <bsd.port.mk>
