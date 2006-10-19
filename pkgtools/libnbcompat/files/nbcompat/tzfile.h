/*	$NetBSD: tzfile.h,v 1.1 2004/08/10 18:47:55 jlam Exp $	*/

/*-
 * Copyright (c) 2004 The NetBSD Foundation, Inc.
 * All rights reserved.
 *
 * This code is derived from software contributed to The NetBSD Foundation
 * by Johnny C. Lam.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. All advertising materials mentioning features or use of this software
 *    must display the following acknowledgement:
 *        This product includes software developed by the NetBSD
 *        Foundation, Inc. and its contributors.
 * 4. Neither the name of The NetBSD Foundation nor the names of its
 *    contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE NETBSD FOUNDATION, INC. AND CONTRIBUTORS
 * ``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED
 * TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE FOUNDATION OR CONTRIBUTORS
 * BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 */

#ifndef _NBCOMPAT_TZFILE_H_
#define _NBCOMPAT_TZFILE_H_

#if HAVE_TZFILE_H
# include <tzfile.h>
#endif

/*
 * Declare functions and macros that may be missing in <tzfile.h>.
 */

#ifndef DAYSPERNYEAR
# define DAYSPERNYEAR	365
#endif

#ifndef EPOCH_YEAR
# define EPOCH_YEAR	1970
#endif

#ifndef HOURSPERDAY
# define HOURSPERDAY	24
#endif

#ifndef MINSPERHOUR
# define MINSPERHOUR	60
#endif

#ifndef SECSPERHOUR
# define SECSPERHOUR	3600
#endif

#ifndef SECSPERMIN
# define SECSPERMIN	60
#endif

#ifndef SECSPERDAY
# define SECSPERDAY	86400
#endif

#ifndef TM_YEAR_BASE
# define TM_YEAR_BASE	1900
#endif

#endif	/* !_NBCOMPAT_TZFILE_H_ */
