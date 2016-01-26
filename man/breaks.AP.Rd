\name{breaks.AP}
\alias{breaks.AP}
\title{
Estimate the Number of Sit to Stand Transitions}
\description{
This function estimates the number of sit to stand transitions.  This function works on a numeric vector where 0 indicates sitting, 1 indicates standing and 2 indicates stepping.  The sum of the instances AP posture transitions from 0 to 1 or 0 to 2.}
\usage{
breaks.AP(posture)
}
\arguments{
  \item{posture}{
a numeric vector (in any epoch) where 0 indicates sitting, 1 indicates standing and 2 indicates stepping.}
}
\value{
Numeric value indicating breaks from sitting
}
\author{
John Staudenmayer
}
\examples{
data(second.by.second)
posture <- second.by.second.data$ap.posture	

breaks.AP(posture)

# summarize by date
tapply(second.by.second.data$ap.posture, second.by.second.data$date, breaks.AP)

}
\keyword{breaks}
\keyword{transitions}
