/** \file config.h
    \brief Defines OpenRAVE installation-specific information.
*/
#ifndef OPENRAVE_DEFINITIONS_H
#define OPENRAVE_DEFINITIONS_H

#if defined(_WIN32) || defined(__CYGWIN__) || defined(_MSC_VER)
  #define OPENRAVE_HELPER_DLL_IMPORT __declspec(dllimport)
  #define OPENRAVE_HELPER_DLL_EXPORT __declspec(dllexport)
  #define OPENRAVE_HELPER_DLL_LOCAL
#else
  #if __GNUC__ >= 4
    #define OPENRAVE_HELPER_DLL_IMPORT __attribute__ ((visibility("default")))
    #define OPENRAVE_HELPER_DLL_EXPORT __attribute__ ((visibility("default")))
    #define OPENRAVE_HELPER_DLL_LOCAL  __attribute__ ((visibility("hidden")))
  #else
    #define OPENRAVE_HELPER_DLL_IMPORT
    #define OPENRAVE_HELPER_DLL_EXPORT
    #define OPENRAVE_HELPER_DLL_LOCAL
  #endif
#endif

// Now we use the generic helper definitions above to define OPENRAVE_API and OPENRAVE_LOCAL.
// OPENRAVE_API is used for the public API symbols. It either DLL imports or DLL exports (or does nothing for static build)
// OPENRAVE_LOCAL is used for non-api symbols.
#if defined(OPENRAVE_DLL) || defined(OPENRAVE_CORE_DLL) // defined if OpenRAVE is compiled as a DLL
  #ifdef OPENRAVE_DLL_EXPORTS // defined if we are building the OpenRAVE DLL (instead of using it)
    #define OPENRAVE_API OPENRAVE_HELPER_DLL_EXPORT
  #else
    #define OPENRAVE_API OPENRAVE_HELPER_DLL_IMPORT
  #endif // OPENRAVE_DLL_EXPORTS
  #define OPENRAVE_LOCAL OPENRAVE_HELPER_DLL_LOCAL
#else // OPENRAVE_DLL is not defined: this means OpenRAVE is a static lib.
  #define OPENRAVE_API
  #define OPENRAVE_LOCAL
#endif // OPENRAVE_DLL

#define OPENRAVE_VERSION_MAJOR 0
#define OPENRAVE_VERSION_MINOR 9
#define OPENRAVE_VERSION_PATCH 0
#define OPENRAVE_VERSION_COMBINED(major, minor, patch) (((major) << 16) | ((minor) << 8) | (patch))
#define OPENRAVE_VERSION OPENRAVE_VERSION_COMBINED(OPENRAVE_VERSION_MAJOR, OPENRAVE_VERSION_MINOR, OPENRAVE_VERSION_PATCH)
#define OPENRAVE_VERSION_EXTRACT_MAJOR(version) (((version)>>16)&0xff)
#define OPENRAVE_VERSION_EXTRACT_MINOR(version) (((version)>>8)&0xff)
#define OPENRAVE_VERSION_EXTRACT_PATCH(version) (((version))&0xff)
#define OPENRAVE_VERSION_STRING "0.9.0"
#define OPENRAVE_VERSION_STRING_FORMAT(version) boost::str(boost::format("%s.%s.%s")%(OPENRAVE_VERSION_EXTRACT_MAJOR(version))%(OPENRAVE_VERSION_EXTRACT_MINOR(version))%(OPENRAVE_VERSION_EXTRACT_PATCH(version)))

#define OPENRAVE_VERSION_GE(major1, minor1, patch1, major2, minor2, patch2) (OPENRAVE_VERSION_COMBINED(major1, minor1, patch1) >= OPENRAVE_VERSION_COMBINED(major2, minor2, patch2))
#define OPENRAVE_VERSION_MINIMUM(major, minor, patch) OPENRAVE_VERSION_GE(OPENRAVE_VERSION_MAJOR, OPENRAVE_VERSION_MINOR, OPENRAVE_VERSION_PATCH, major, minor, patch)

// if 0, single precision
// if 1, double precision
#define OPENRAVE_PRECISION 1

#define OPENRAVE_PLUGINS_INSTALL_DIR "/usr/local/lib/openrave0.15-plugins"
#define OPENRAVE_DATA_INSTALL_DIR "/usr/local/share/openrave-0.15"
#define OPENRAVE_PYTHON_INSTALL_DIR "/usr/local/lib/python2.7/dist-packages"
#define OPENRAVE_LOCALE_INSTALL_DIR "/usr/local/share/locale"

// the python path that OpenRAVE was compiled with
#define OPENRAVE_PYTHON_EXECUTABLE "/usr/bin/python"

// whether log4cxx is to be used
#define OPENRAVE_LOG4CXX 1

#endif