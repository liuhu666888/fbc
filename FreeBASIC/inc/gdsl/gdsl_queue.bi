''
''
'' gdsl_queue -- header translated with help of SWIG FB wrapper
''
'' NOTICE: This file is part of the FreeBASIC Compiler package and can't
''         be included in other distributions without authorization.
''
''
#ifndef __gdsl_queue_bi__
#define __gdsl_queue_bi__

#include once "gdsl/gdsl_types.bi"

type gdsl_queue_t as any ptr

declare function gdsl_queue_alloc cdecl alias "gdsl_queue_alloc" (byval NAME as string, byval ALLOC_F as gdsl_alloc_func_t, byval FREE_F as gdsl_free_func_t) as gdsl_queue_t
declare sub gdsl_queue_free cdecl alias "gdsl_queue_free" (byval Q as gdsl_queue_t)
declare sub gdsl_queue_flush cdecl alias "gdsl_queue_flush" (byval Q as gdsl_queue_t)
declare function gdsl_queue_get_name cdecl alias "gdsl_queue_get_name" (byval Q as gdsl_queue_t) as zstring ptr
declare function gdsl_queue_get_size cdecl alias "gdsl_queue_get_size" (byval Q as gdsl_queue_t) as ulong
declare function gdsl_queue_is_empty cdecl alias "gdsl_queue_is_empty" (byval Q as gdsl_queue_t) as integer
declare function gdsl_queue_get_head cdecl alias "gdsl_queue_get_head" (byval Q as gdsl_queue_t) as gdsl_element_t
declare function gdsl_queue_get_tail cdecl alias "gdsl_queue_get_tail" (byval Q as gdsl_queue_t) as gdsl_element_t
declare function gdsl_queue_set_name cdecl alias "gdsl_queue_set_name" (byval Q as gdsl_queue_t, byval NEW_NAME as string) as gdsl_queue_t
declare function gdsl_queue_insert cdecl alias "gdsl_queue_insert" (byval Q as gdsl_queue_t, byval VALUE as any ptr) as gdsl_element_t
declare function gdsl_queue_remove cdecl alias "gdsl_queue_remove" (byval Q as gdsl_queue_t) as gdsl_element_t
declare function gdsl_queue_search cdecl alias "gdsl_queue_search" (byval Q as gdsl_queue_t, byval COMP_F as gdsl_compare_func_t, byval VALUE as any ptr) as gdsl_element_t
declare function gdsl_queue_search_by_position cdecl alias "gdsl_queue_search_by_position" (byval Q as gdsl_queue_t, byval POS as ulong) as gdsl_element_t
declare function gdsl_queue_map_forward cdecl alias "gdsl_queue_map_forward" (byval Q as gdsl_queue_t, byval MAP_F as gdsl_map_func_t, byval USER_DATA as any ptr) as gdsl_element_t
declare function gdsl_queue_map_backward cdecl alias "gdsl_queue_map_backward" (byval Q as gdsl_queue_t, byval MAP_F as gdsl_map_func_t, byval USER_DATA as any ptr) as gdsl_element_t
declare sub gdsl_queue_write cdecl alias "gdsl_queue_write" (byval Q as gdsl_queue_t, byval WRITE_F as gdsl_write_func_t, byval OUTPUT_FILE as FILE ptr, byval USER_DATA as any ptr)
declare sub gdsl_queue_write_xml cdecl alias "gdsl_queue_write_xml" (byval Q as gdsl_queue_t, byval WRITE_F as gdsl_write_func_t, byval OUTPUT_FILE as FILE ptr, byval USER_DATA as any ptr)
declare sub gdsl_queue_dump cdecl alias "gdsl_queue_dump" (byval Q as gdsl_queue_t, byval WRITE_F as gdsl_write_func_t, byval OUTPUT_FILE as FILE ptr, byval USER_DATA as any ptr)

#endif
