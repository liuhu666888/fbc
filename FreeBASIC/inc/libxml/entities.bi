''
''
'' entities -- header translated with help of SWIG FB wrapper
''
'' NOTICE: This file is part of the FreeBASIC Compiler package and can't
''         be included in other distributions without authorization.
''
''
#ifndef __entities_bi__
#define __entities_bi__

#include once "libxml/xmlversion.bi"
#include once "libxml/tree.bi"

enum xmlEntityType
	XML_INTERNAL_GENERAL_ENTITY = 1
	XML_EXTERNAL_GENERAL_PARSED_ENTITY = 2
	XML_EXTERNAL_GENERAL_UNPARSED_ENTITY = 3
	XML_INTERNAL_PARAMETER_ENTITY = 4
	XML_EXTERNAL_PARAMETER_ENTITY = 5
	XML_INTERNAL_PREDEFINED_ENTITY = 6
end enum


type _xmlEntity
	_private as any ptr
	type as xmlElementType
	name as xmlChar ptr
	children as _xmlNode ptr
	last as _xmlNode ptr
	parent as _xmlDtd ptr
	next as _xmlNode ptr
	prev as _xmlNode ptr
	doc as _xmlDoc ptr
	orig as xmlChar ptr
	content as xmlChar ptr
	length as integer
	etype as xmlEntityType
	ExternalID as xmlChar ptr
	SystemID as xmlChar ptr
	nexte as _xmlEntity ptr
	URI as xmlChar ptr
	owner as integer
end type

type xmlEntitiesTable as _xmlHashTable
type xmlEntitiesTablePtr as xmlEntitiesTable ptr

declare sub xmlInitializePredefinedEntities cdecl alias "xmlInitializePredefinedEntities" ()
declare function xmlAddDocEntity cdecl alias "xmlAddDocEntity" (byval doc as xmlDocPtr, byval name as xmlChar ptr, byval type as integer, byval ExternalID as xmlChar ptr, byval SystemID as xmlChar ptr, byval content as xmlChar ptr) as xmlEntityPtr
declare function xmlAddDtdEntity cdecl alias "xmlAddDtdEntity" (byval doc as xmlDocPtr, byval name as xmlChar ptr, byval type as integer, byval ExternalID as xmlChar ptr, byval SystemID as xmlChar ptr, byval content as xmlChar ptr) as xmlEntityPtr
declare function xmlGetPredefinedEntity cdecl alias "xmlGetPredefinedEntity" (byval name as xmlChar ptr) as xmlEntityPtr
declare function xmlGetDocEntity cdecl alias "xmlGetDocEntity" (byval doc as xmlDocPtr, byval name as xmlChar ptr) as xmlEntityPtr
declare function xmlGetDtdEntity cdecl alias "xmlGetDtdEntity" (byval doc as xmlDocPtr, byval name as xmlChar ptr) as xmlEntityPtr
declare function xmlGetParameterEntity cdecl alias "xmlGetParameterEntity" (byval doc as xmlDocPtr, byval name as xmlChar ptr) as xmlEntityPtr
declare function xmlEncodeEntities cdecl alias "xmlEncodeEntities" (byval doc as xmlDocPtr, byval input as xmlChar ptr) as xmlChar ptr
declare function xmlEncodeEntitiesReentrant cdecl alias "xmlEncodeEntitiesReentrant" (byval doc as xmlDocPtr, byval input as xmlChar ptr) as xmlChar ptr
declare function xmlEncodeSpecialChars cdecl alias "xmlEncodeSpecialChars" (byval doc as xmlDocPtr, byval input as xmlChar ptr) as xmlChar ptr
declare function xmlCreateEntitiesTable cdecl alias "xmlCreateEntitiesTable" () as xmlEntitiesTablePtr
declare function xmlCopyEntitiesTable cdecl alias "xmlCopyEntitiesTable" (byval table as xmlEntitiesTablePtr) as xmlEntitiesTablePtr
declare sub xmlFreeEntitiesTable cdecl alias "xmlFreeEntitiesTable" (byval table as xmlEntitiesTablePtr)
declare sub xmlDumpEntitiesTable cdecl alias "xmlDumpEntitiesTable" (byval buf as xmlBufferPtr, byval table as xmlEntitiesTablePtr)
declare sub xmlDumpEntityDecl cdecl alias "xmlDumpEntityDecl" (byval buf as xmlBufferPtr, byval ent as xmlEntityPtr)
declare sub xmlCleanupPredefinedEntities cdecl alias "xmlCleanupPredefinedEntities" ()

#endif
