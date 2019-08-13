\name{bev.import}
\alias{bev.import}
\title{Import multiple behaviour observation files
}
\description{
Import the behaviour and corresponding timestamps from multiple files of the same individual. Can also add the behaviour lables to the raw acceleration data.
}
\usage{
bev.import(id , date = NULL , time = NULL , timestamp = NULL , behaviour , rounding = 10 , time_format = dmy_hms , match = FALSE , acc.data , data.path = NULL)
}
\arguments{
  \item{id}{ID of the individual that is read in.
}
  \item{date}{Name of the column that stores the date. (This applies if date and time are stored in two sperate columns)
}
  \item{time}{Name of the column that stores the time. (This applies if date and time are stored in two sperate columns)
}
  \item{timestamp}{Name of the column that stores the timestamp. (This applies if date and time are stored in the same column)
}
  \item{behaviour}{Name of the column that stores the behaviour.
}
  \item{rounding}{Rounds the timestamp down to the desired position set in seconds. No rounding when set to 1. The default is 10 which will round the timestamp down to full 10 seconds.
}
  \item{time_format}{Date-time format of the originall data. Default is dmy_hms which corresponds to day-month-year_hour:minute:second
}
  \item{match}{Should the imported behaviour data be added to the acceleration data. Default is FALSE.
}
  \item{acc.data}{In case match is TRUE this names the acceleration data frame to which the behaviour data should be added.
}
  \item{data.path}{Data path of the data in case they are not stored in the RStudio project folder. If the data is located in the project folder no path is needed.
}
\details{
This function will only accept csv files. All files of the same individual schould be named in order. Multiple files of the same individual should be indicated with either a number or a letter (capital or small). Excepted formats are "id_behaviour_1.csv" or "id_behaviour_a.csv". In case there is only one behaviour file it should be named "individual_behaviour.csv".
All data will be read in in order of the file naming. Timestamp order will have no influence.
}
\value{
The output will be a data.table.data frame which should work like a base R data.frame in most cases.
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Wanja Rast
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
tag.import
}
\examples{
##---- NOT RUN !! ----

data <- bev.import(id = "tag6566" , date = "date" , time = "time" , behaviour = "bev" ,
                    rounding = 10 , match = T , acc.data = raw.data , time_format = dmy_hms)
}