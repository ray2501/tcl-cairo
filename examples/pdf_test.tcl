#!/usr/bint/tclsh

package require cairo
set surface [::cairo::cairo_pdf_surface_create test.pdf 300 300]
set cr [::cairo::cairo_create $surface]
::cairo::cairo_rectangle $cr 10 10 40 40
::cairo::cairo_set_source_rgb $cr 1 1 1
::cairo::cairo_fill $cr
::cairo::cairo_rectangle $cr 20 20 20 20
::cairo::cairo_set_source_rgb $cr 1 0 0
::cairo::cairo_fill $cr
::cairo::cairo_show_page $cr
::cairo::cairo_surface_flush $surface
::cairo::cairo_surface_destroy $surface
::cairo::cairo_destroy $cr
