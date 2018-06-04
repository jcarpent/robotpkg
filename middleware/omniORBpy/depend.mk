# robotpkg depend.mk for:	middleware/omniORBpy
# Created:			Anthony Mallet on Thu, 13 Mar 2008
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
OMNIORBPY_DEPEND_MK:=	${OMNIORBPY_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		omniORBpy
endif

ifeq (+,$(OMNIORBPY_DEPEND_MK)) # ------------------------------------------

include ../../mk/robotpkg.prefs.mk # for OPSYS
ifeq (Ubuntu,${OPSYS})
  ifneq (,$(filter 10.04,${OS_VERSION}))
    PREFER.omniORBpy?=	robotpkg
  endif
else ifeq (Fedora,${OPSYS})
  ifneq (,$(filter 18 19,${OS_VERSION}))
    PREFER.omniORBpy?=	robotpkg
  endif
else ifeq (Gentoo,${OS_FAMILY})
  PREFER.omniORBpy?=	robotpkg
endif
PREFER.omniORBpy?=	system

DEPEND_USE+=		omniORBpy

DEPEND_ABI.omniORBpy?=	omniORBpy
DEPEND_DIR.omniORBpy?=	../../middleware/omniORBpy

SYSTEM_SEARCH.omniORBpy=\
  'lib/{python[0-9]*/{site,dist}-packages,omniidl}/omniidl_be/python.py'

# need omniidl_be in PYTHONPATH
PYTHONPATH.omniORBpy+=	$(dir ${SYSTEM_FILES.omniORBpy})

SYSTEM_PKG.Debian.omniORBpy =	python-omniorb omniidl-python
SYSTEM_PKG.NetBSD.omniORBpy =	net/omniORB
SYSTEM_PKG.RedHat.omniORBpy =	omniORBpy-devel (python${PYTHON_VERSION})

include ../../mk/sysdep/python.mk

endif # OMNIORBPY_DEPEND_MK ------------------------------------------------

include ../../middleware/omniORB/depend.mk

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
