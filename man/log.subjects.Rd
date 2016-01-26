\name{log.subjects}
\alias{log.subjects}
\docType{data}
\title{
Example Log of Subjects}

\description{
This data frame provides a list of all subjects and visits that have AP data to be processed.  Also provides the name of the study of interest}

\usage{data(log.subjects)}
\format{
  A data frame with 4 observations on the following 3 variables.
  \describe{
    \item{\code{id}}{a numeric vector}
    \item{\code{visit}}{a factor with levels \code{visit1} \code{visit2}}
    \item{\code{study}}{a factor with levels \code{PhysicalActivityIntervention}}
  }
}
\details{
Example bed log. Data are made up for 2 subjects and 2 visits each}

\examples{
#	load example subject log 
data("log.subjects",package="activpalProcessing")

}
\keyword{datasets}
