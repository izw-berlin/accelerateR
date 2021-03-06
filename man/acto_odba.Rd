\name{acto_odba}
\alias{acto_odba}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Plot an actogram based on the ODBA
%%  ~~function to do ... ~~
}
\description{Plots the overall activity of the focal animal based on the ODBA at every timestamp. The plot can center around midday or midnight.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
acto_odba(data = ... , time = "..." , ODBA = "ODBA" , cutoff = 1 , night_shift = FALSE , sun = F , suncolor = "red" , timezone = "UTC" , long = ... , lat = ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{data frame containing timestamps and ODBA values}
  \item{time}{column name of the timestamp in " "

  the date format needs to be in year-month-day hour-month-minute}
  \item{ODBA}{colum name of the ODBA values put in " "

  by default this is "ODBA"}
  \item{cutoff}{set a percentile to cap the highest ODBA value

  higher values will be lowered to the set percentile. The default is 1 were nothing is cutoff}
  \item{night_shift}{set to TRUE if the plot shall center around midnight

  by default the plot centers around midday}
  \item{sun}{set to TRUE if sunset and sunrise lines shall be added to the plot

  default is set to FALSE - see also details}
  \item{suncolor}{specify the color of the sunset/sunrise lines put in "..." (uses ggplot color codes)

  default is red}
  \item{timezone}{specify the timezone in "..."

  default is "UTC"}
  \item{long}{Longitude coordinate - needed for the calculation of the sunset/sunrise}
  \item{lat}{Latitude coordinate - needed for the calculation of the sunset/sunrise}
}
\details{In cases where it is expected to see very high acceleration values du to the animal manipulating the tag directly, it could be considered to cut off the highest ODBA values by setting the cutoff value.

The sun times are calculated on a minute scale, so sunset or sunrise can happen at any minute. Often acceleration data is not recorded on a minute scale, therefore there might by sun times with no coresponding acceleration data timestamp. This would however distort the whole graph. To solve this the sun times are matched to the closest acceleration timestamp. How much the sun time is changed by this depends on how often acceleration data is sampled. If these intervals are long, the amount by which the suntimes change might also by quite big. Using the sun indicator on data sets with long intervals between acceleration samples might not work very well.
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{Sunlines are calculated using the maptools package
%% ~put references to the literature/web site here ~
}
\author{Wanja Rast
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{acto
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
data("acto.data")

acto_odba(data = acto.data , time = "timestamp" , ODBA = "ODBA")
}

