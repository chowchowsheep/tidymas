% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sat_active_risk.R
\name{convert_dur_size}
\alias{convert_dur_size}
\title{Converts size in months to size in percent of portfolio terms}
\usage{
convert_dur_size(strat_df, strat_id_sizetype, duration_df,
  convert_to_decimal = TRUE)
}
\arguments{
\item{strat_df}{A gathered dataframe containing `date`, `strategy`, `instrument`, and `size` in percent or month-weighted sizes.}

\item{strat_id_sizetype}{A dataframe containing the columns of `strategy`, `identifier` and `size_type` that correspondings to those in strat_df. `size_type` must be `months` or `percent`}

\item{duration_df}{A dataframe containing timeseries duration of assets, can be generated from `get_dur_bbg`}

\item{convert_to_decimal}{A boolean indicating if all final percent numbers be converted to decimal form ie. divide by 100}
}
\value{
A dataframes with same structure as `strat_df`, but sizes converted to percent form
}
\description{
Converts size in months to size in percent of portfolio terms
}
\examples{
data(demo_strategies)
data(demo_duration)
portfolios <- build_strategies(demo_strategies, as.Date("2016-01-01"), as.Date("2018-12-07"))
actual_pf_size <- convert_dur_size(portfolios$actual, portfolios$summary, demo_duration)
}
