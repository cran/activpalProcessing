\name{identifyDirectory}
\alias{identifyDirectory}
\title{
Identify Working Directory}
\description{
This function identifies the path to the folder where data files and logs are saved.  Results files will also be saved to this folder}
\usage{
identifyDirectory(path)
}
\arguments{
  \item{path}{
A character string identifying the path to the working directory}
}

\value{
A character string identifying the path to the working directory}

\author{
Kate Lyden}

\examples{
\dontrun{	
identifyDirectory("/Users/jsmith/Documents/...")
identifyDirectory("C:/Documents and Settings/...")
}
}
\keyword{ library }
