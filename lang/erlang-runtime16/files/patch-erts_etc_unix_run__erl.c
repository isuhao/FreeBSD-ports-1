--- erts/etc/unix/run_erl.c.orig
+++ erts/etc/unix/run_erl.c
@@ -69,9 +69,6 @@
 #ifdef HAVE_UTMP_H
 #  include <utmp.h>
 #endif
-#ifdef HAVE_UTIL_H
-#  include <util.h>
-#endif
 #ifdef HAVE_SYS_IOCTL_H
 #  include <sys/ioctl.h>
 #endif
