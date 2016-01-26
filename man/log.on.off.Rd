\name{log.on.off}
\alias{log.on.off}
\docType{data}
\title{
Example on/off Log}
\description{
This data frame is an example of an on/off log.  If no on/off log is provided all AP data will be included in analysis}

\usage{data(log.on.off)}
\format{
  A data frame with 59 observations on the following 15 variables.
  \describe{
    \item{\code{id}}{a numeric vector}
    \item{\code{visit}}{a factor with levels \code{visit1} \code{visit2}}
    \item{\code{study}}{a factor with levels \code{PhysicalActivityIntervention}}
    \item{\code{date.on.month}}{a numeric vector}
    \item{\code{date.on.day}}{a numeric vector}
    \item{\code{date.on.year}}{a numeric vector}
    \item{\code{time.on.hour}}{a numeric vector}
    \item{\code{time.on.minute}}{a numeric vector}
    \item{\code{time.on.seconds}}{a numeric vector}
    \item{\code{date.off.month}}{a numeric vector}
    \item{\code{date.off.day}}{a numeric vector}
    \item{\code{date.off.year}}{a numeric vector}
    \item{\code{time.off.hour}}{a numeric vector}
    \item{\code{time.off.minute}}{a numeric vector}
    \item{\code{time.off.seconds}}{a numeric vector}
  }
}

\details{
Example bed log. Data are made up for 2 subjects and 2 visits each}

\examples{
#	load example on.off log 
data("log.on.off",package="activpalProcessing")

}
\keyword{datasets}
