\name{second.by.second}
\alias{second.by.second}
\title{
Convert AP Events File to a Second-By-Second File}
\description{
This function converts the AP Events file to a second-by-second data frame.  The AP Events file must be a data frame in the format produced by the function activpal.file.reader.}

\usage{
second.by.second(data)
}

\arguments{
  \item{data}{
Data is a data frame in the format produced by the function activpal.file.reader.}
}
\details{
This function works on AP Events files read in by activpal.file.reader.}

\value{
data frame with 9 variables in second-by-second epochs: 
1) time = date and time stamps beginning at start of recording and ending at last recording
2) date = date stamp beginning at first day of recording and ending at last day of recording recording, 3) ap.posture = posture 0 = sitting, 1 = standing, 3 = stepping
4) mets = met value
5) met.hours = met value expressed as met.hour (e.g. mets/3600)
6) steps = cumulative step count
7) fifteen.sec.mets = 15 second epoch met value (e.g. average met value over 15 seconds)
8) one.min.mets = 60 second epoch met value (e.g. average met value over 60 seconds)
9) num.events = numeric value indicating which event this second of data corresponds to
}

\author{
John Staudenmayer, Kate Lyden}

\seealso{
\code{\link{activpal.file.reader}}
\code{\link{julian}}
}
\examples{
\dontrun{	
data <- activpal.file.reader(file.name.and.path)

second.by.second(data)
}
data(events.data)
second.by.second(events.data)
}

\keyword{ extrapolate }
