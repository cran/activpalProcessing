\name{identifyVisits}
\alias{identifyVisits}
\title{
Identify Visits in Study}
\description{
This function identifies visits that have AP files to be processed}
\usage{
identifyVisits(directory=directory, name.of.log.subjects)
}
\arguments{
  \item{directory}{
Directory is a character string identifying the path to the working directory.  Default value is directory}
  \item{name.of.log.subjects}{
character string identifying the name of the log of subjects}
}
\value{
A vector of visit names}

\author{
Kate Lyden}
\examples{
\dontrun{	
identifyVisits("/Users/jsmith/Documents/...log.subjects.csv")
}
}
\keyword{ visits }
