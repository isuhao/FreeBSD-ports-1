# Created by: Jason Bacon <bacon4000@gmail.com>
# $FreeBSD$

PORTREVISION=	9
PKGNAMESUFFIX=	-openmpi

MPIPREFIX=	mpi/openmpi/

MAINTAINER=	bacon4000@gmail.com

LIB_DEPENDS+=	libmpi.so:${PORTSDIR}/net/openmpi

MASTERDIR=	${.CURDIR}/../fvcom

MAKE_ARGS+=	FC=${LOCALBASE}/${MPIPREFIX}bin/mpif90 \
		PORT_CPP_FLAGS+=-DMULTIPROCESSOR

.include "${MASTERDIR}/Makefile"
