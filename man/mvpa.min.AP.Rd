\name{mvpa.min.AP}
\alias{mvpa.min.AP}
\title{
Estimate Time in Moderate-to-Vigorous Intensity Activity}
\description{
This function estimates time spent in moderate-to-vigorous intensity activity (MVPA).  MVPA is activity >= 3 METs.
}
\usage{
mvpa.min.AP(mets,epoch)
}
\arguments{
  \item{mets}{
mets is a vector of met values}
	\item{epoch}{
numeric value indicating what epoch (in seconds) the data are in (e.g. 60 = 1 minute epochs).  The default value is 1 second}
}
\value{
a numeric value indicating hours spent in mvpa
}

\author{
Kate Lyden}

\seealso{
\code{\link{sed.min.AP}}	
\code{\link{lit.min.AP}}
}
\examples{
data(second.by.second)
mets <- second.by.second.data$mets	

mvpa.min.AP(mets,epoch=1)

# summarize by date
tapply(second.by.second.data$mets, second.by.second.data$date,mvpa.min.AP,epoch=1)

}
\keyword{ activity }
