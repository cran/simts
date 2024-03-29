% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/imu.r
\name{create_imu}
\alias{create_imu}
\title{Internal IMU Object Construction}
\usage{
create_imu(
  data,
  ngyros,
  nacces,
  axis,
  freq,
  unit = NULL,
  name = NULL,
  stype = NULL
)
}
\arguments{
\item{data}{A \code{matrix} with dimensions N x length(index)}

\item{ngyros}{An \code{integer} containing the number of gyroscopes}

\item{nacces}{An \code{integer} containing the number of accelerometers}

\item{axis}{A \code{vector} unique representation of elements e.g. x,y,z or x,y or x.}

\item{freq}{An \code{integer} that provides the frequency for the data.}

\item{unit}{A \code{string} that contains the unit expression of the frequency. Default value is \code{NULL}.}

\item{name}{A \code{string} that provides an identifier to the data. Default value is \code{NULL}.}

\item{stype}{A \code{string} that describes the sensor type. Default value is \code{NULL}.}
}
\value{
An \code{imu} object class.
}
\description{
Internal quick build for imu object.
}
\author{
James Balamuta
}
\keyword{internal}
