# robotpkg Makefile for:	motion/ros-orocos-kdl
# Created:			Anthony Mallet on Thu,  4 Jul 2013
#

ROS_PKG=	orocos_kinematics_dynamics
ROS_VERSION=	1.4.0
ROS_REPO=	orocos
ROS_PKGURL?=	${ROS_PKG}/archive/v

CATEGORIES=	motion
ROS_COMMENT=	package wrapper for Kinematics and Dynamics Library
CONFLICTS+=	ros-orocos-kdl-[0-9]*

include ../../meta-pkgs/ros-base/Makefile.common

WRKSRC=		${WRKDIR}/${DISTNAME}/orocos_kinematics_dynamics

include ../../devel/ros-catkin/depend.mk
include ../../motion/orocos-kdl/depend.mk
include ../../motion/py-orocos-kdl/depend.mk
include ../../mk/robotpkg.mk
