\name{lit.min.AP}
\alias{lit.min.AP}
\title{
Estimate Time in Light Intensity Activity}
\description{
This function estimates time spent in light intensity activity.  Light intensity activity is activity in the standing or stepping posture and between 1.5-2.99 METs.}

\usage{
lit.min.AP(mets, posture, epoch = 1)
}
\arguments{
  \item{mets}{
mets is a vector of met values}
  \item{posture}{
posture is a vector of values 0-2 indicating 0=sitting, 1=standing, 2=stepping}
  \item{epoch}{
numeric value indicating what epoch (in seconds) the data are in (e.g. 60 = 1 minute epochs).  The default value is 1 second}
}

\details{
The default settings of the AP assign a met value of 1.25 to sitting, 1.4 to standing and estimates a met value for stepping activities.  Cadence is used to estimate mets for stepping.  Although the default met value for standing is 1.4, which is below the traditional met threshold for light intensity, standing is always considered light because it is an upright posture and only seated activities are considered sedentary}

\value{
a numeric value indicating hours spent in light intensity activity}

\author{
Kate Lyden}

\seealso{
\code{\link{sed.min.AP}}
\code{\link{mvpa.min.AP}} 
	}

\examples{
	
data(second.by.second.data)
mets <- second.by.second.data$mets	
posture <- second.by.second.data$ap.posture
lit.min.AP(mets,posture,epoch=1)
}
\keyword{light}
