\name{guideline.bouts.min}
\alias{guideline.bouts.min}
\title{
Estimate Minutes Spent in Bouts of Activity that Qualify Towards Meeting the Physical Activity Guidelines}
\description{
This function calculates time spent in guideline minutes (bouts of MVPA (>=3 METs) that last at least 10 min. Allows for 20% of time below 3 METs i.e. if bout is 10 min long, 2 min can be <3 METs).
}
\usage{
guideline.bouts.min(mets)
}
\arguments{
  \item{mets}{mets is a second-by-second numeric vector
}
}
\value{
numeric value indicating number of minutes spent in guideline bouts}

\author{
John Staudenmayer}

\seealso{
\code{\link{guideline.bouts.num}}
}
\examples{
data(second.by.second)
mets <- second.by.second.data$mets	

guideline.bouts.min(mets)

# summarize by date
tapply(second.by.second.data$mets, second.by.second.data$date, guideline.bouts.min)

}
\keyword{activity}
\keyword{mvpa}
