%{

/* Includes the header in the wrapper code */
#include "physics/ChLinkDistance.h"

%}
 
// Tell SWIG about parent class in Python
%import "ChLinkLock.i"


/* Parse the header file to generate wrappers */
%include "../chrono/physics/ChLinkDistance.h"  







