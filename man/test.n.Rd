\name{test.n}
\alias{test.n}
\title{This runs test_one function for many replicates, usually 10,000, for example, to generate the type-2 error rate for one constituent study (not for end user).}
\usage{
  test.n(r_events_control, n_sample_size_control,
    n_sample_size_treated, OR_hat, n, alpha)
}
\arguments{
  \item{r_events_control}{Number of events in untreated}

  \item{n_sample_size_control}{Sample size in untreated
  group}

  \item{n_sample_size_treated}{Sample size in treated
  group}

  \item{alpha}{Type-1 error rate.}

  \item{n}{Number of iterations used to generate
  constituent study power; suggest use 10,000.}

  \item{OR_hat}{Summary odds ratio from meta-analysis}
}
\value{
  Type-2 error for one constituent study
}
\description{
  This runs test_one function for many replicates, usually
  10,000, for example, to generate the type-2 error rate
  for one constituent study (not for end user).
}

