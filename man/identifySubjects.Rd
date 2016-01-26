\name{identifySubjects}
\alias{identifySubjects}
\title{
Identify Subjects in Study}
\description{
This function identifies subject that have AP files to be processed}
\usage{
identifySubjects(directory=directory, name.of.log.subjects)
}
\arguments{
  \item{directory}{
Directory is a character string identifying the path to the working directory.  Default value is directory}
  \item{name.of.log.subjects}{
character string identifying the name of the log of subjects}
}
\value{
A vector of subject IDs}

\author{
Kate Lyden}

\examples{
\dontrun{	
identify.study("/Users/jsmith/Documents...log.subjects")
}
}

\keyword{ subject }
