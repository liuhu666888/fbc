''
''
'' SAX -- header translated with help of SWIG FB wrapper
''
'' NOTICE: This file is part of the FreeBASIC Compiler package and can't
''         be included in other distributions without authorization.
''
''
#ifndef __SAX_bi__
#define __SAX_bi__

#include once "libxml/xmlversion.bi"
#include once "libxml/parser.bi"
#include once "libxml/xlink.bi"

declare function getPublicId cdecl alias "getPublicId" (byval ctx as any ptr) as xmlChar ptr
declare function getSystemId cdecl alias "getSystemId" (byval ctx as any ptr) as xmlChar ptr
declare sub setDocumentLocator cdecl alias "setDocumentLocator" (byval ctx as any ptr, byval loc as xmlSAXLocatorPtr)
declare function getLineNumber cdecl alias "getLineNumber" (byval ctx as any ptr) as integer
declare function getColumnNumber cdecl alias "getColumnNumber" (byval ctx as any ptr) as integer
declare function isStandalone cdecl alias "isStandalone" (byval ctx as any ptr) as integer
declare function hasInternalSubset cdecl alias "hasInternalSubset" (byval ctx as any ptr) as integer
declare function hasExternalSubset cdecl alias "hasExternalSubset" (byval ctx as any ptr) as integer
declare sub internalSubset cdecl alias "internalSubset" (byval ctx as any ptr, byval name as xmlChar ptr, byval ExternalID as xmlChar ptr, byval SystemID as xmlChar ptr)
declare sub externalSubset cdecl alias "externalSubset" (byval ctx as any ptr, byval name as xmlChar ptr, byval ExternalID as xmlChar ptr, byval SystemID as xmlChar ptr)
declare function getEntity cdecl alias "getEntity" (byval ctx as any ptr, byval name as xmlChar ptr) as xmlEntityPtr
declare function getParameterEntity cdecl alias "getParameterEntity" (byval ctx as any ptr, byval name as xmlChar ptr) as xmlEntityPtr
declare function resolveEntity cdecl alias "resolveEntity" (byval ctx as any ptr, byval publicId as xmlChar ptr, byval systemId as xmlChar ptr) as xmlParserInputPtr
declare sub entityDecl cdecl alias "entityDecl" (byval ctx as any ptr, byval name as xmlChar ptr, byval type as integer, byval publicId as xmlChar ptr, byval systemId as xmlChar ptr, byval content as xmlChar ptr)
declare sub attributeDecl cdecl alias "attributeDecl" (byval ctx as any ptr, byval elem as xmlChar ptr, byval fullname as xmlChar ptr, byval type as integer, byval def as integer, byval defaultValue as xmlChar ptr, byval tree as xmlEnumerationPtr)
declare sub elementDecl cdecl alias "elementDecl" (byval ctx as any ptr, byval name as xmlChar ptr, byval type as integer, byval content as xmlElementContentPtr)
declare sub notationDecl cdecl alias "notationDecl" (byval ctx as any ptr, byval name as xmlChar ptr, byval publicId as xmlChar ptr, byval systemId as xmlChar ptr)
declare sub unparsedEntityDecl cdecl alias "unparsedEntityDecl" (byval ctx as any ptr, byval name as xmlChar ptr, byval publicId as xmlChar ptr, byval systemId as xmlChar ptr, byval notationName as xmlChar ptr)
declare sub startDocument cdecl alias "startDocument" (byval ctx as any ptr)
declare sub endDocument cdecl alias "endDocument" (byval ctx as any ptr)
declare sub attribute cdecl alias "attribute" (byval ctx as any ptr, byval fullname as xmlChar ptr, byval value as xmlChar ptr)
declare sub startElement cdecl alias "startElement" (byval ctx as any ptr, byval fullname as xmlChar ptr, byval atts as xmlChar ptr ptr)
declare sub endElement cdecl alias "endElement" (byval ctx as any ptr, byval name as xmlChar ptr)
declare sub reference cdecl alias "reference" (byval ctx as any ptr, byval name as xmlChar ptr)
declare sub characters cdecl alias "characters" (byval ctx as any ptr, byval ch as xmlChar ptr, byval len as integer)
declare sub ignorableWhitespace cdecl alias "ignorableWhitespace" (byval ctx as any ptr, byval ch as xmlChar ptr, byval len as integer)
declare sub processingInstruction cdecl alias "processingInstruction" (byval ctx as any ptr, byval target as xmlChar ptr, byval data as xmlChar ptr)
declare sub globalNamespace cdecl alias "globalNamespace" (byval ctx as any ptr, byval href as xmlChar ptr, byval prefix as xmlChar ptr)
declare sub setNamespace cdecl alias "setNamespace" (byval ctx as any ptr, byval name as xmlChar ptr)
declare function getNamespace cdecl alias "getNamespace" (byval ctx as any ptr) as xmlNsPtr
declare function checkNamespace cdecl alias "checkNamespace" (byval ctx as any ptr, byval nameSpace as xmlChar ptr) as integer
declare sub namespaceDecl cdecl alias "namespaceDecl" (byval ctx as any ptr, byval href as xmlChar ptr, byval prefix as xmlChar ptr)
declare sub comment cdecl alias "comment" (byval ctx as any ptr, byval value as xmlChar ptr)
declare sub cdataBlock cdecl alias "cdataBlock" (byval ctx as any ptr, byval value as xmlChar ptr, byval len as integer)
declare sub initxmlDefaultSAXHandler cdecl alias "initxmlDefaultSAXHandler" (byval hdlr as xmlSAXHandlerV1 ptr, byval warning as integer)
declare sub inithtmlDefaultSAXHandler cdecl alias "inithtmlDefaultSAXHandler" (byval hdlr as xmlSAXHandlerV1 ptr)
declare sub initdocbDefaultSAXHandler cdecl alias "initdocbDefaultSAXHandler" (byval hdlr as xmlSAXHandlerV1 ptr)

#endif
