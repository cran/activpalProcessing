\name{prolonged.sed.bouts.num}
\alias{prolonged.sed.bouts.num}
\title{
Estimate The Number of Prolonged Sedentary Bouts}
\description{
This function calculates the number of sitting/lying bouts that last at least 'n' minutes in duration.  User specifies n.}

\usage{
prolonged.sed.bouts.num(posture, epoch = 1, n)
}
\arguments{
  \item{posture}{
posture is vector indicating sitting (0), standing (1) and stepping (2).}
  \item{epoch}{
numeric value indicating what epoch (in seconds) the data are in (e.g. 60 = 1 minute epochs).  The default value is 1 second}
  \item{n}{
n is a numeric value indicating the duration (in minutes) of prolonged sedentary bouts of interest}
}

\value{
A numeric value indicating the number of sedentary bouts longer than 'n' minutes in duration
}

\author{
John Staudenmayer}

\seealso{
\code{\link{prolonged.sed.bouts.min}}
}
\examples{
data(second.by.second.data)
posture <- second.by.second.data$ap.posture

# estimate number of sedentary bouts lasting at least 60 minutes 
prolonged.sed.bouts.num(posture,epoch=1,n=60) 

}
\keyword{ sitting }
\keyword{ sedentary }
