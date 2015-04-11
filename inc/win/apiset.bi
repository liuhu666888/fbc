'' FreeBASIC binding for mingw-w64-v4.0.1

#pragma once

#include once "_mingw.bi"

#define _API_SET_H_
#define API_SET_PREFIX_NAME_A "API-"
#define API_SET_PREFIX_NAME_U wstr("API-")
#define API_SET_EXTENSION_NAME_A "EXT-"
#define API_SET_EXTENSION_NAME_U wstr("EXT-")
#define API_SET_SCHEMA_NAME ApiSetSchema
#define API_SET_SECTION_NAME ".apiset"
#define API_SET_SCHEMA_SUFFIX wstr(".sys")
#define API_SET_SCHEMA_VERSION __MSABI_LONG(2u)
#define API_SET_HELPER_NAME ApiSetHelp
const API_SET_LOAD_SCHEMA_ORDINAL = 1
const API_SET_LOOKUP_ORDINAL = 2
const API_SET_RELEASE_SCHEMA_ORDINAL = 3
#define API_SET_STRING_X(s) #s
#define API_SET_STRING(s) API_SET_STRING_X(s)
#define API_SET_STRING_U_Y(s) wstr(s)
#define API_SET_STRING_U_X(s) API_SET_STRING_U_Y(s)
#define API_SET_STRING_U(s) API_SET_STRING_U_X(API_SET_STRING(s))
#define API_SET_OVERRIDE(X) X##Implementation
'' TODO: #define API_SET_LEGACY_OVERRIDE_DEF(X) X = API_SET_OVERRIDE(X)
'' TODO: #define API_SET_OVERRIDE_DEF(X) API_SET_LEGACY_OVERRIDE_DEF(X) PRIVATE
#define API_SET_PRIVATE(X) X PRIVATE
#define API_SET_LIBRARY(X) LIBRARY X
#define API_SET(X) X
