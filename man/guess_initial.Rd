% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{guess_initial}
\alias{guess_initial}
\title{Randomly guess a starting parameter}
\usage{
guess_initial(
  desc,
  objdesc,
  model_type,
  num_param,
  expect_diff,
  N,
  wv,
  tau,
  ranged,
  G
)
}
\arguments{
\item{desc}{A \code{vector<string>} that contains the model's components.}

\item{objdesc}{A \code{field<vec>} that contains an object description (e.g. values) of the model.}

\item{model_type}{A \code{string} that indicates whether it is an SSM or sensor.}

\item{num_param}{An \code{unsigned int} number of parameters in the model (e.g. # of thetas).}

\item{expect_diff}{A \code{double} that contains the mean of the first difference of the data}

\item{N}{A \code{integer} that contains the number of observations in the data.}

\item{tau}{A \code{vec} that contains the scales. (e.g. 2^(1:J))}

\item{G}{A \code{integer} that indicates how many random draws that should be performed.}
}
\value{
A \code{vec} containing smart parameter starting guesses to be iterated over.
}
\description{
Sets starting parameters for each of the given parameters.
}
\keyword{internal}
