% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/awk.R
\name{awk}
\alias{awk}
\alias{awk_version}
\title{Wrapper for awk}
\usage{
awk(program, file, options = "")

awk_version()
}
\description{
Simple wrapper for awk command line utility.
}
\examples{
\dontrun{
awk('{print $1 "," $5}', "/etc/passwd", '-F":"')
}
}

