''
''
'' xmlstring -- header translated with help of SWIG FB wrapper
''
'' NOTICE: This file is part of the FreeBASIC Compiler package and can't
''         be included in other distributions without authorization.
''
''
#ifndef __xmlstring_bi__
#define __xmlstring_bi__

#include once "libxml/xmlversion.bi"

type xmlChar as ubyte

declare function xmlStrdup cdecl alias "xmlStrdup" (byval cur as xmlChar ptr) as xmlChar ptr
declare function xmlStrndup cdecl alias "xmlStrndup" (byval cur as xmlChar ptr, byval len as integer) as xmlChar ptr
declare function xmlCharStrndup cdecl alias "xmlCharStrndup" (byval cur as string, byval len as integer) as xmlChar ptr
declare function xmlCharStrdup cdecl alias "xmlCharStrdup" (byval cur as string) as xmlChar ptr
declare function xmlStrsub cdecl alias "xmlStrsub" (byval str as xmlChar ptr, byval start as integer, byval len as integer) as xmlChar ptr
declare function xmlStrchr cdecl alias "xmlStrchr" (byval str as xmlChar ptr, byval val as xmlChar) as xmlChar ptr
declare function xmlStrstr cdecl alias "xmlStrstr" (byval str as xmlChar ptr, byval val as xmlChar ptr) as xmlChar ptr
declare function xmlStrcasestr cdecl alias "xmlStrcasestr" (byval str as xmlChar ptr, byval val as xmlChar ptr) as xmlChar ptr
declare function xmlStrcmp cdecl alias "xmlStrcmp" (byval str1 as xmlChar ptr, byval str2 as xmlChar ptr) as integer
declare function xmlStrncmp cdecl alias "xmlStrncmp" (byval str1 as xmlChar ptr, byval str2 as xmlChar ptr, byval len as integer) as integer
declare function xmlStrcasecmp cdecl alias "xmlStrcasecmp" (byval str1 as xmlChar ptr, byval str2 as xmlChar ptr) as integer
declare function xmlStrncasecmp cdecl alias "xmlStrncasecmp" (byval str1 as xmlChar ptr, byval str2 as xmlChar ptr, byval len as integer) as integer
declare function xmlStrEqual cdecl alias "xmlStrEqual" (byval str1 as xmlChar ptr, byval str2 as xmlChar ptr) as integer
declare function xmlStrQEqual cdecl alias "xmlStrQEqual" (byval pref as xmlChar ptr, byval name as xmlChar ptr, byval str as xmlChar ptr) as integer
declare function xmlStrlen cdecl alias "xmlStrlen" (byval str as xmlChar ptr) as integer
declare function xmlStrcat cdecl alias "xmlStrcat" (byval cur as xmlChar ptr, byval add as xmlChar ptr) as xmlChar ptr
declare function xmlStrncat cdecl alias "xmlStrncat" (byval cur as xmlChar ptr, byval add as xmlChar ptr, byval len as integer) as xmlChar ptr
declare function xmlStrncatNew cdecl alias "xmlStrncatNew" (byval str1 as xmlChar ptr, byval str2 as xmlChar ptr, byval len as integer) as xmlChar ptr
declare function xmlStrPrintf cdecl alias "xmlStrPrintf" (byval buf as xmlChar ptr, byval len as integer, byval msg as xmlChar ptr, ...) as integer
''''''' declare function xmlStrVPrintf cdecl alias "xmlStrVPrintf" (byval buf as xmlChar ptr, byval len as integer, byval msg as xmlChar ptr, byval ap as va_list) as integer
declare function xmlGetUTF8Char cdecl alias "xmlGetUTF8Char" (byval utf as ubyte ptr, byval len as integer ptr) as integer
declare function xmlCheckUTF8 cdecl alias "xmlCheckUTF8" (byval utf as ubyte ptr) as integer
declare function xmlUTF8Strsize cdecl alias "xmlUTF8Strsize" (byval utf as xmlChar ptr, byval len as integer) as integer
declare function xmlUTF8Strndup cdecl alias "xmlUTF8Strndup" (byval utf as xmlChar ptr, byval len as integer) as xmlChar ptr
declare function xmlUTF8Strpos cdecl alias "xmlUTF8Strpos" (byval utf as xmlChar ptr, byval pos as integer) as xmlChar ptr
declare function xmlUTF8Strloc cdecl alias "xmlUTF8Strloc" (byval utf as xmlChar ptr, byval utfchar as xmlChar ptr) as integer
declare function xmlUTF8Strsub cdecl alias "xmlUTF8Strsub" (byval utf as xmlChar ptr, byval start as integer, byval len as integer) as xmlChar ptr
declare function xmlUTF8Strlen cdecl alias "xmlUTF8Strlen" (byval utf as xmlChar ptr) as integer
declare function xmlUTF8Size cdecl alias "xmlUTF8Size" (byval utf as xmlChar ptr) as integer
declare function xmlUTF8Charcmp cdecl alias "xmlUTF8Charcmp" (byval utf1 as xmlChar ptr, byval utf2 as xmlChar ptr) as integer

#endif
