\name{step.min.AP}
\alias{step.min.AP}
\title{
Estimate Time Spent Stepping}
\description{
This function to calculates the hours spent stepping}

\usage{
step.min.AP(posture, epoch = 1)
}
\arguments{
  \item{posture}{
posture is a vector indicating sitting (0), standing (1) and stepping (2)}
  \item{epoch}{
numeric value indicating what epoch (in seconds) the data are in (e.g. 60 = 1 minute epochs).  The default value is 1 second}
}
\value{
a numeric value indicating hours spent stepping
}

\author{
Kate Lyden}

\seealso{
\code{\link{sed.min.AP}}
\code{\link{stand.min.AP}}
}

\examples{
	
data(second.by.second.data)
posture <- second.by.second.data$ap.posture
	
step.min.AP(posture,epoch=1)

# summarize by date
tapply(second.by.second.data$ap.posture, second.by.second.data$date,step.min.AP,epoch=1)

}

\keyword{ steps }
