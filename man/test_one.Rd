\name{test_one}
\alias{test_one}
\title{For one constituent study and one simulation of its outcome, test if p<type-1 error rate (not for end user).}
\usage{
  test_one(r_events_control, n_sample_size_control,
    n_sample_size_treated, OR_hat, alpha)
}
\arguments{
  \item{r_events_control}{Number of events in untreated}

  \item{n_sample_size_control}{Sample size in untreated
  group}

  \item{n_sample_size_treated}{Sample size in treated
  group}

  \item{alpha}{Type-1 error rate.}

  \item{OR_hat}{Summary odds ratio from meta-analysis}
}
\value{
  Number, 1 if positive, 0 if negative.
}
\description{
  For one constituent study and one simulation of its
  outcome, test if p<type-1 error rate (not for end user).
}

