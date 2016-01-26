\name{on.off}
\alias{on.off}
\title{
Read in on/off log and Identify on/off Times in Second-by-Second AP Events File}
\description{
This function reads in on/off log and marks on/off time in sec-by-second file.  On/off log must be in correct format.  A column named "off" will be added to the second-by-second file.  1 indicates the device is off and 0 indicates the device is on.}
\usage{
on.off(directory = directory, id, visit, name.of.log.on.off, data)
}
\arguments{
  \item{directory}{
Directory is a character string identifying the path to the working directory.  Default value is directory}
  \item{id}{
Character string identifying the id of the subject of interest.  This argument should correspond to the id used in the on/off log
}
\item{visit}{
Character string identifying the visit of interest for the subject.  This argument should correspond to the visit identifier used in the on/off log
}
 \item{name.of.log.on.off}{
Character string identifying the name of the on/off log
}
  \item{data}{
data is the second-by-second AP events file}
}
\value{
A data frame with the column "off" added to the sec-by-sec AP events file}

\author{
Kate Lyden}
\note{
Follow the example on/off log provided with this package (log.on.off)}

\examples{
\dontrun{	
on.off(directory,log.on.off,data)
}
}

\keyword{ wear time }
\keyword{ off time }
