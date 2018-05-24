%module Cairo
%{
#include <cairo-features.h>    
#include <cairo.h>
#include <cairo-deprecated.h>    
#include <cairo-version.h>
#include <cairo-pdf.h>    
#include <cairo-ps.h>        
#include <cairo-svg.h>    
%}
%include "/usr/include/cairo/cairo-features.h"
%include "/usr/include/cairo/cairo.h"
%include "/usr/include/cairo/cairo-deprecated.h"
%include "/usr/include/cairo/cairo-version.h"
%include "/usr/include/cairo/cairo-pdf.h"
%include "/usr/include/cairo/cairo-svg.h"
%include "/usr/include/cairo/cairo-ps.h"
