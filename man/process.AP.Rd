\name{process.AP}
\alias{process.AP}
\title{
Process AP Data}
\description{
This function processes multiple AP events files for multiple subjects/visits in a given study.  This function uses all other functions included in the package "process.AP" to read in all AP events files saved in a given directory and estimate physical activity and sedentary behavior variables.  Three files are created and saved to the specified directory 1) Sleep Wake Wear Table, 2) Results Table and 3) Mean Table}

\usage{
process.AP(directory, name.of.log.subjects, name.of.log.bed, name.of.log.on.off)
}
\arguments{
  \item{directory}{
character string identifying the path to the working directory.}

   \item{name.of.log.subjects}{
character string identifying the name of the log of subjects}
  \item{name.of.log.bed}{
character string identifying the name of the bed log.  Default value is NULL}
  \item{name.of.log.on.off}{
character string identifying the name of the on/off log. Default value is NULL}
}
\details{
AP events files must be saved using the following naming convention - "study name_subject id_visit.csv".  For example, if study name = "Physical Activity Intervention", subject id = 1, visit = 3 the events file is named "Physical Activity Intervention_1_3.csv". bed log and on/off log do not need to be provided.  Results will be estimated from all AP data (e.g. sleep time and off time will be included in analyses) - results and sleep wake wear table will indicate no valid logs were provided.  If logs are provided, they must be in the exact format of the example logs provided with this package. Example logs may be loaded into R and exported to the specified working directory (see Examples).  These files should serve as templates for the user to create their own logs.}

\value{
Results Table - A .csv file generated and saved in the specified directory.  The file contains the following variables estimated per day device was worn. 
1) study - name of study 
2) sub - subject ID 
3) visit - visit ID 
4) date - date of wear 
5) hours.awake.worn - number of hours subject was awake and wearing the device 
6) met.hours - total met hours 
7) step.count - total step count 
8) sed.mins - number of minutes spent sitting 
9) stand.mins - number of minutes spent standing 
10) step.mins - number of minutes spent stepping 
11) lit.mins - number of minutes spent in light intensity (1.5-2.99) physical activity
12) mvpa.mins - number of minutes spent in moderate-to-vigorous intensity (>=3 METs) activity 
13) breaks - number of breaks from sedentary time 
14) break.rate - breaks per sedentary hour 
15) guideline.minutes - number of minutes spent in bouts of activity that qualify towards meeting the physical activity guidelines (>= 3 METs and at least 10 minutes in duration) 
16) num.guideline bout - number of bouts of activity that qualify towards meeting the physical activity guidelines (>= 3 METs and at least 10 minutes in duration) 
17) min.in.sed.30 - number of minutes spent in sedentary bouts at least 30 minutes in duration 
18) min.in.sed.60 - number of minutes spent in sedentary bouts at least 60 minutes in duration 
19) percent.of.hours.awake.worn.sed - percent of waking hours sedentary 
20) percent.of.hours.awake.worn.lit - percent of waking hours in light intensity activity 
21) percent.of.hours.awake.worn.mvpa - percent of waking hours in mvpa

Sleep Wake Wear Table - A .csv file generated and saved in the specified directory.  The file contains the following variables estimated per day device was worn.  If valid bed and/or on/off logs are not provided sleep wake wear table will indicate that the logs are missing. 
1) study - name of study 
2) sub - subject ID 
3) visit - visit ID 
4) date - date of wear 
5) awake.hours - total hours spent awake 
6) total.sleep.hours - total hours spent asleep 
7) total.wear.hours - total hours device was worn 
8) non.wear.hours - total hours device was not worn 
9) hours.awake.worn - total hours the device was worn while awake 
10) hours.awake.not.worn - total hours the device was not worn while awake 
11) hours.sleep.worn - total hours the device was worn while asleep 
12) hours.sleep.not.worn - total hours the device was not worn while asleep

Means Table - A .csv file generated and saved in the specified directory.  The file summarizes (average, sd and 95 percent CI) the variables in Results Table by subject and visit
}

\author{
Kate Lyden}

\examples{
\dontrun{

#	identify working directory
directory <- identifyDirectory("/Users/jsmith/Documents/InterventionStudy/")

#	load example logs and export a tempaltes to working directory
data("log.subjects",package="activpalProcessing")
data("log.bed",package="activpalProcessing")
data("log.on.off",package="activpalProcessing")

write.table(log.subjects,file=paste(directory,"temp.log.subjects.csv",sep=""),sep=",",row.names=F)
write.table(log.bed,file=paste(directory,"temp.log.bed.csv",sep=""),sep=",",row.names=F)
write.table(log.on.off,file=paste(directory,"temp.log.on.off.csv",sep=""),sep=",",row.names=F)

#	process AP events files saved in directory 		
process.AP(directory=directory, name.of.log.subjects, name.of.log.bed, name.of.log.on.off)
}
}
\keyword{ loop }
\keyword{ process }