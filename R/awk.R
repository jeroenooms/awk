#' Wrapper for awk
#'
#' Simple wrapper for awk command line utility.
#'
#' @export
#' @rdname awk
#' @examples \dontrun{
#' awk('{print $1 "," $5}', "/etc/passwd", '-F":"')
#' }
awk <- function(program, file, options = "") {
  file <- normalizePath(file, mustWork = TRUE)
  postfix <- ifelse(identical(.Platform$OS.type, "windows"), ".exe", "")
  path <- system.file(paste0("bin/awk", postfix), package = "awk")
  stopifnot(file.exists(path))
  system2(path, paste(options, shQuote(program), shQuote(file)), stdout = TRUE)
}

#' @export
#' @rdname awk
#' @useDynLib awk R_awk_version
awk_version <- function(){
  .Call(R_awk_version)
}
