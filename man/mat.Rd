% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mat.R
\name{mat}
\alias{mat}
\alias{mat.character}
\alias{mat.default}
\alias{mat.list}
\title{Matrices}
\usage{
mat(x, ...)

\method{mat}{default}(x, ...)

\method{mat}{character}(x, rows = TRUE, sep = ",", eval = FALSE, ...)

\method{mat}{list}(x, rows = TRUE, ...)
}
\arguments{
\item{x}{A data vector, character string, or a list.}

\item{...}{Aditional optional arguments to be passed on to \code{matrix}.}

\item{rows}{Logical. If \code{TRUE} (the default) the matrix is filled by rows, 
otherwise the matrix is filled by columns.}

\item{sep}{Separator string. Values within each row/column of x are 
separated by this string. Default is \code{","}.}

\item{eval}{Logical indicating whether or not the character string contains R 
expressions that need to be evaluated. Default is \code{FALSE}. See examples 
below for usage.}
}
\value{
A matrix (i.e., an object of class \code{"matrix"}).
}
\description{
Like \code{matrix}, \code{mat} creates a matrix from the given set of 
values. However, these values can also be represented by a character string, 
or a list of vectors. Initially inspired by 
\href{http://docs.scipy.org/doc/numpy-1.10.0/reference/generated/numpy.matrix.html}{NumPy's matrix function}.
}
\examples{
# Creating a matrix from a character string
mat("1, 2, 3, 4; 5, 6, 7, 8")  # ";" separates rows
mat("1, 2, 3, 4; 5, 6, 7, 8", rows = FALSE)  # ";" separates columns
mat("1 2 3 4; 5 6 7 8", sep = "")  # use spaces instead of commas
mat(c(1, 2, 3, 4, 5, 6, 7, 8), nrow = 2, byrow = TRUE)  # works like matrix too

# Character strings containing R expressions
mat("rnorm(3); rnorm(3)")
mat("rnorm(3); rnorm(3)", eval = TRUE)
mat("1, 2, 3; 4, 5, pi")
mat("1, 2, 3; 4, 5, pi", eval = TRUE)

# Creating a matrix from a list
z1 <- list(1:5, 6:10)
z2 <- list(a = 1:5, b = 6:10)
mat(z1)
mat(z2)  # preserves names as row names
mat(z2, rows = FALSE)  # preserves names as column names
}
\seealso{
\code{\link{bmat}}, \code{\link{dmat}}, \code{\link{matrix}}.
}

