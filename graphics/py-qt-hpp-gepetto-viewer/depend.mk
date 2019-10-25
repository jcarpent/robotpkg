# robotpkg depend.mk for:	graphics/py-qt-hpp-gepetto-viewer
# Created:			Florent Lamiraux on Sun, 8 Mar 2015
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
PY_QT_HPP_GEPETTO_VIEWER_DEPEND_MK:=	${PY_QT_HPP_GEPETTO_VIEWER_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		py-qt-hpp-gepetto-viewer
endif

ifeq (+,$(PY_QT_HPP_GEPETTO_VIEWER_DEPEND_MK)) # ---------------------------

PREFER.py-qt-hpp-gepetto-viewer?=	robotpkg

DEPEND_USE+=		py-qt-hpp-gepetto-viewer

# depend on appropriate Qt version when using Qt, all versions otherwise.
_hgv_qts={qt4,qt5}
_hgv_qt=$(if $(filter qt,${PKG_ALTERNATIVES}),${PKG_ALTERNATIVE.qt},${_hgv_qts})

DEPEND_ABI.py-qt-hpp-gepetto-viewer?=	${PKGTAG.python}-${_hgv_qt}-hpp-gepetto-viewer>=4.6.1
DEPEND_DIR.py-qt-hpp-gepetto-viewer?=	../../graphics/py-qt-hpp-gepetto-viewer

SYSTEM_SEARCH.py-qt-hpp-gepetto-viewer=			\
	'lib/pkgconfig/hpp-gepetto-viewer.pc:/Version/s/[^0-9.]//gp'

endif # PY_QT_HPP_GEPETTO_VIEWER_DEPEND_MK ---------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
