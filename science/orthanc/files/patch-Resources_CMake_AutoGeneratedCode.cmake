--- Resources/CMake/AutoGeneratedCode.cmake.orig	2015-02-12 13:47:38 UTC
+++ Resources/CMake/AutoGeneratedCode.cmake
@@ -3,6 +3,7 @@ set(AUTOGENERATED_SOURCES)
 
 file(MAKE_DIRECTORY ${AUTOGENERATED_DIR})
 include_directories(${AUTOGENERATED_DIR})
+include(FindPythonInterp)
 
 macro(EmbedResources)
   # Convert a semicolon separated list to a whitespace separated string
@@ -26,7 +27,7 @@ macro(EmbedResources)
     "${TARGET_BASE}.h"
     "${TARGET_BASE}.cpp"
     COMMAND 
-    python
+    ${PYTHON_EXECUTABLE}
     "${CMAKE_CURRENT_SOURCE_DIR}/Resources/EmbedResources.py"
     "${AUTOGENERATED_DIR}/EmbeddedResources"
     ${SCRIPT_ARGUMENTS}