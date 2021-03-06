% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/open.spending.ts.R
\name{open_spending.ts}
\alias{open_spending.ts}
\title{Read and analyze univariate time series data from Open Spending API}
\usage{
open_spending.ts(json_data, time, amount, 
order = NULL, prediction_steps = 1)
}
\arguments{
\item{json_data}{The json string, URL or file from Open Spending API}

\item{time}{Specify the time label of the json time series data}

\item{amount}{Specify the amount label of the json time series data}

\item{order}{An integer vector of length 3 specifying the order of the Arima model}

\item{prediction_steps}{The number of prediction steps}
}
\value{
A json string with the resulted parameters of the \code{\link{ts.analysis}} 
function.
}
\description{
Extract and analyze univariate time series data from Open Spending API, 
using the ts.analysis function.
}
\details{
This function extracts the time series data provided by the Open Spending API, 
in order to return the results from the \code{\link{ts.analysis}} function.
}
\seealso{
\code{\link{ts.analysis}}
}
\author{
Kleanthis Koupidis
}
