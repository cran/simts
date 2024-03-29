% Generated by roxygen2: do not edit by hand
% Please edit documentation in src/gmwm_logic.cpp, src/gmwm_logic.h
\name{gmwm_update_cpp}
\alias{gmwm_update_cpp}
\title{Update Wrapper for the GMWM Estimator}
\usage{
gmwm_update_cpp(
  theta,
  desc,
  objdesc,
  model_type,
  N,
  expect_diff,
  ranged,
  orgV,
  scales,
  wv,
  starting,
  compute_v,
  K,
  H,
  G,
  robust,
  eff
)
}
\arguments{
\item{theta}{A \code{vec} with dimensions N x 1 that contains user-supplied initial values for parameters}

\item{desc}{A \code{vector<string>} indicating the models that should be considered.}

\item{objdesc}{A \code{field<vec>} containing a list of parameters (e.g. AR(1) = c(1,1), ARMA(p,q) = c(p,q,1))}

\item{model_type}{A \code{string} that represents the model transformation}

\item{scales}{A \code{vec} that contains the scales or taus (2^(1:J))}

\item{starting}{A \code{bool} that indicates whether we guessed starting (T) or the user supplied estimates (F).}
}
\value{
A \code{field<mat>} that contains the parameter estimates from GMWM estimator.
}
\description{
This function uses information obtained previously (e.g. WV covariance matrix) to re-estimate a different model parameterization
}
\references{
Wavelet variance based estimation for composite stochastic processes, S. Guerrier and Robust Inference for Time Series Models: a Wavelet-Based Framework, S. Guerrier
}
\author{
JJB
}
\keyword{internal}
