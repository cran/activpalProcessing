\name{sed.min.AP}
\alias{sed.min.AP}
\title{
Estimate Time in Sedentary}
\description{
This function to calculates the minutes spent sitting/lying.}

\usage{
sed.min.AP(posture, epoch = 1)
}
\arguments{
  \item{posture}{
posture is a vector indicating sitting (0), standing (1) and stepping (2)}
  \item{epoch}{
numeric value indicating what epoch (in seconds) the data are in (e.g. 60 = 1 minute epochs).  The default value is 1 second}
}

\details{
The default settings of the AP assign a met value of 1.25 to sitting, 1.4 to standing and estimates a met value for stepping activities.  Cadence is used to estimate mets for stepping.  With these settings all standing activity will be considered sedentary (e.g. < 1.5 mets).  In the second-by-second function in this package standing met values are changed to 1.5 so that standing is considered a light intensity activity.  Thus the only events considered sedentary are sitting/lying events}


\value{
a numeric value indicating minutes spent sedentary
}

\author{
Kate Lyden}

\seealso{
\code{\link{lit.min.AP}}
\code{\link{mvpa.min.AP}}
\code{\link{stand.min.AP}}
\code{\link{step.min.AP}}
}

\examples{
	
data(second.by.second.data)
posture <- second.by.second.data$ap.posture
	
sed.min.AP(posture,epoch=1)

# summarize by date
tapply(second.by.second.data$ap.posture, second.by.second.data$date, sed.min.AP,epoch=1)
}
\keyword{ sit }
\keyword{ sedentary }
