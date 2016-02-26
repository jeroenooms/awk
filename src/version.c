#include <Rinternals.h>
#include <config.h>

SEXP R_awk_version(){
  return mkString(PACKAGE_STRING);
}
