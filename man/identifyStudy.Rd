\name{identifyStudy}
\alias{identifyStudy}
\title{
Identify Study Name}
\description{
This function identifies the study name.  This function helps ensure the correct data are being processed. Study name is identified from the log of subjects.}
\usage{
identifyStudy(directory, name.of.log.subjects)
}
\arguments{
  \item{directory}{
Directory is a character string identifying the path to the working directory.  default value is directory}
  \item{name.of.log.subjects}{character string identifying the name of the log of subjects}
}
\value{
character string identifying study name
}
\author{
Kate Lyden
}
\examples{
\dontrun{	
identifyStudy("/Users/jsmith/Documents...log.subjects.csv")
}
}

\keyword{ study }
