\name{wake}
\alias{wake}
\title{
Read in bed log and Identify Wake/Sleep Times in Second-by-Second AP Events File}
\description{
This function reads in bed log and marks wake/sleep time in sec-by-second file.  Bed log must be in correct format.  A column named "wake" will be added to the second-by-second file.  1 indicates the participant is awake and 0 indicates the participant is sleeping.}

\usage{
wake(directory = directory, id, visit, name.of.log.bed, data)
}
\arguments{
  \item{directory}{Directory is a character string identifying the path to the working directory.  Default value is directory}
  \item{name.of.log.bed}{
Character string identifying the name of the bed log}
\item{id}{
Character string identifying the id of the subject of interest.  This argument should correspond to the id used in the bed log
}
\item{visit}{
Character string identifying the visit of interest for the subject.  This argument should correspond to the visit identifier used in the bed log
}
  \item{data}{
data is the second-by-second AP events file}
}

\value{
A data frame with the column "wake" added to the sec-by-sec AP events file}

\author{
Kate Lyden}
\note{
Follow the example bed log provided with this package (log.bed)}

\examples{
\dontrun{	
on.off(directory,id,visit,log.bed,data)
}
}

\keyword{ sleep }
\keyword{ bed }
