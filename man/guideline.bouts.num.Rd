\name{guideline.bouts.num}
\alias{guideline.bouts.num}
\title{
Estimate the Number of Bouts of Activity that Qualify Towards Meeting the Physical Activity Guidelines
}
\description{
This function calculates the number of guideline bouts (bouts of MVPA (>=3 METs) that last at least 10 min. Allows for 20 percent of time below 3 METs i.e. if bout is 10 min long, 2 min can be <3 METs}

\usage{guideline.bouts.num(mets)
}
\arguments{
  \item{mets}{mets is a second-by-second numeric vector}
}

\value{
numeric value indicating the number of guideline bouts
}

\author{
John Staudenmayer}

\seealso{
\code{\link{guideline.bouts.min}}
}
\examples{
data(second.by.second)
mets <- second.by.second.data$mets	

guideline.bouts.num(mets)

# summarize by date
tapply(second.by.second.data$mets, second.by.second.data$date, guideline.bouts.num)
}
\keyword{ activity }
\keyword{ mvpa }
