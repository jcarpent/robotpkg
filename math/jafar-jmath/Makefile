# robotpkg Makefile for:	math/jafar-jmath
# Created:			Redouane Boumghar on Wed, 15 Jun 2011
#

JAFAR_PKG=	jmath-0.5

CATEGORIES=	math
JAFAR_COMMENT=	mathematical tools (vector, matrix, random number ...)

include ../../meta-pkgs/jafar/Makefile.common


PKG_SUPPORTED_OPTIONS+=	flann
PKG_OPTION_DESCR.FLANN=	Enable FLANN support.
define PKG_OPTION_SET.flann
  CMAKE_ARGS+=-DHAVE_FLANN=ON
  include ../../graphics/flann/depend.mk
endef
define PKG_OPTION_UNSET.flann
  CMAKE_ARGS+=-DHAVE_FLANN=OFF
endef

CMAKE_ARGS+= -DPATH_TO_BOOST_SANDBOX=${PREFIX.boost-numeric-bindings}/include

include ../../devel/jafar-kernel/depend.mk
include ../../math/boost-numeric-bindings/depend.mk
include ../../math/lapack/depend.mk
include ../../mk/robotpkg.mk
