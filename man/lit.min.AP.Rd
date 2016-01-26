\name{lit.min.AP}
\alias{lit.min.AP}
\title{
Estimate Time in Light Intensity Activity}
\description{
This function estimates time spent in light intensity activity.  Light intensity activity is activity between 1.5-2.99 METs.}

\usage{
lit.min.AP(mets, epoch = 1)
}
\arguments{
  \item{mets}{
mets is a vector of met values}
  \item{epoch}{
numeric value indicating what epoch (in seconds) the data are in (e.g. 60 = 1 minute epochs).  The default value is 1 second}
}

\details{
The default settings of the AP assign a met value of 1.25 to sitting, 1.4 to standing and estimates a met value for stepping activities.  Cadence is used to estimate mets for stepping.  With these settings all standing activity will be considered sedentary (e.g. < 1.5 mets).  In the second-by-second function in this package standing met values are changed to 1.5 so that standing is considered a light intensity activity}

\value{
a numeric value indicating hours spent in light intensity activity}

\author{
Kate Lyden}

\seealso{
\code{\link{sed.min.AP}}
\code{\link{mvpa.min.AP}} 
	}

\examples{
	
data(second.by.second)
mets <- second.by.second.data$mets	

lit.min.AP(mets,epoch=1)

# summarize by date
tapply(second.by.second.data$mets, second.by.second.data$date, lit.min.AP,epoch=1)
}
\keyword{light}
