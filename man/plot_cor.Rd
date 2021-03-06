% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sat_active_risk.R
\name{plot_cor}
\alias{plot_cor}
\title{Plotting correlation heatmaps based on correlation of assets}
\usage{
plot_cor(cor_df, title = NULL)
}
\arguments{
\item{cor_df}{long form dataframe (see tidyr::gather), containing columns `strat1`, `strat2`, `corr`}

\item{title}{optional title of chart}
}
\value{
None
}
\description{
Plotting correlation heatmaps based on correlation of assets
}
\examples{
unwt_ret <- data.frame(date = as.Date(c("2018-01-02", "2018-01-03", "2018-01-04", "2018-01-05")),
                              long_spx = c(0.015, 0.021, -0.03, 0.01),
                              long_ukx = c(-0.005, 0.03, -0.01, -0.04),
                              long_hsi = c(0.023, 0.001, -0.005, 0.008))
cor_df <- calc_cor(unwt_ret)
plot_cor(cor_df)
}
