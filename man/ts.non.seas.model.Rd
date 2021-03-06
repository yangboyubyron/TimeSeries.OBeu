% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ts.non.seas.model.r
\name{ts.non.seas.model}
\alias{ts.non.seas.model}
\title{Model fit of non seasonal time series}
\usage{
ts.non.seas.model(tsdata, x.ord = NULL, tojson = FALSE)
}
\arguments{
\item{tsdata}{The input univariate non seasonal time series data}

\item{x.ord}{An integer vector of length 3 specifying the order of the Arima model}

\item{tojson}{If TRUE the results are returned in json format, default returns a list}
}
\value{
A list with the following components:
\itemize{
\item model.summary: 
\itemize{
\item ts_model The summary model details returned as Arima object for internal use in ts.analysis function}

\item model:
\itemize{
 \item ts_model: 
 \item arima.order The Arima order
 \item arima.coef A vector of AR, MA and regression coefficients
 \item arima.coef.se The standard error of the coefficients }

\item residuals: The residuals of the model (fitted innovations)

\item compare:
\itemize{
 \item variance.coef The matrix of the estimated variance of the coefficients
 \item resid.variance The MLE of the innovations variance
 \item not.used.obs The number of not used observations for the fitting
 \item used.obs the number of used observations for the fitting
 \item loglik The maximized log-likelihood (of the differenced data), or the approximation to it used
 \item aic The AIC value corresponding to the log-likelihood
 \item bic The BIC value corresponding to the log-likelihood
 \item aicc The second-order Akaike Information Criterion corresponding to the log-likelihood}}
}
\description{
Model fit of non seasonal time series
}
\details{
Model fit of non seasonal time series using arima models of non seasonal time series data.
The model with the lowest AIC value is selected for forecasts.
}
\examples{
ts.non.seas.model(Athens_draft_ts)

}
\seealso{
\code{\link{ts.analysis}}, \code{\link[forecast]{Arima}}
}
\author{
Kleanthis Koupidis
}
