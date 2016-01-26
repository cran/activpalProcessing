\name{log.bed}
\alias{log.bed}
\docType{data}
\title{Example of a Bed Log}
\description{This data frame is an example of a bed log.  Bed logs need to be in this format to work with this package.  If no bed log is provided all wear time will be included in analysis
}

\usage{data(log.bed)}
\format{
  A data frame with 32 observations on the following 15 variables.
  \describe{
    \item{\code{id}}{a numeric vector}
    \item{\code{visit}}{a factor with levels \code{visit 2} \code{visit1} \code{visit2}}
    \item{\code{study}}{a factor with levels \code{PhysicalActivityIntervention}}
    \item{\code{date.out.month}}{a numeric vector}
    \item{\code{date.out.day}}{a numeric vector}
    \item{\code{date.out.year}}{a numeric vector}
    \item{\code{time.out.hour}}{a numeric vector}
    \item{\code{time.out.minute}}{a numeric vector}
    \item{\code{time.out.seconds}}{a numeric vector}
    \item{\code{date.in.month}}{a numeric vector}
    \item{\code{date.in.day}}{a numeric vector}
    \item{\code{date.in.year}}{a numeric vector}
    \item{\code{time.in.hour}}{a numeric vector}
    \item{\code{time.in.minute}}{a numeric vector}
    \item{\code{time.in.seconds}}{a numeric vector}
  }
}
\details{Example bed log. Data are made up for 2 subjects each (id=7 & 8) and 2 visits (visit= 1 & 2)
}

\examples{

#	load example bed log 
data("log.bed",package="activpalProcessing")


}

\keyword{datasets}
