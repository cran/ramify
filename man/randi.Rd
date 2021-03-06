% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/convenience.R
\name{randi}
\alias{randi}
\title{Matrix/Array of Uniform Random Integers}
\usage{
randi(imax, nrow, ncol = 1, ..., atleast_2d = NULL)
}
\arguments{
\item{imax}{A positive integer.}

\item{nrow}{The desired number of rows.}

\item{ncol}{The desired number of columns.}

\item{...}{Further dimensions of the array.}

\item{atleast_2d}{Logical indicating whether or not to force column vectors 
to have a second dimension equal to one. Defaults to \code{FALSE}. This 
behavior can also be changed globally using, for example 
\code{options(atleast_2d = TRUE)}.}
}
\value{
A matrix or array of pseudorandom numbers.
}
\description{
Construct a matrix or multi-way array of uniform random integers.
}
\examples{
randi(2, 5, 5)
}
\seealso{
\code{\link{rand}}, \code{\link{randn}}, \code{\link{sample}}.
}

