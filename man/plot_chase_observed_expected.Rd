\name{plot_chase_observed_expected}
\alias{plot_chase_observed_expected}
\title{From a meta-analysis, analyse for publication bias.
 Calculates observed and expected number of positive studies and P for difference.}
\usage{
  plot_chase_observed_expected(vec_r_events_control,
    vec_r_events_treated, vec_n_sample_size_control,
    vec_n_sample_size_treated, n, low.alpha, high.alpha,
    by.alpha)
}
\arguments{
  \item{vec_r_events_control}{an ordered vector of number
  of events in the untreated group of constituent studies
  from a meta-analysis.}

  \item{vec_r_events_treated}{an ordered vector of number
  of events in the treated group of constituent studies
  from a meta-analysis.}

  \item{vec_n_sample_size_control}{an ordered vector of the
  number of participants in the untreated group.}

  \item{vec_n_sample_size_treated}{an ordered vector of the
  number of participants in the treated group.}

  \item{n}{Number of iterations used to generate
  constituent study power; suggest use 10,000.}

  \item{low.alpha}{Lower limit of type-1 error rate used to
  judge whether constituent studies are positive; suggest
  0.001.}

  \item{high.alpha}{Upper limit of type-1 error rate used
  to judge whether constituent studies are positive;
  suggest 0.3.}

  \item{by.alpha}{Interval of type-2 error rate at which
  observed and expected values and P for difference
  evaluated.}
}
\value{
  a dataframe with columns which include alpha level,
  observed number of positive studies, expected number, and
  P for difference, OR_hat (summary measure of effect for
  meta-analysis) with varying levels of significance for
  constituent studies.
}
\description{
  From a meta-analysis, analyse for publication bias.
  Calculates observed and expected number of positive
  studies and P for difference.
}
\examples{
data("BMort") ## Meta-analysis of statin use (Brugts 2009, BMJ)
 Btmort<-with(BMort, plot_chase_observed_expected(r_events_control,
   r_events_treated, n_sample_size_control, n_sample_size_treated, n=10,
   low.alpha=.001, high.alpha=0.3, by.alpha=0.01))
plot(Btmort$alpha, Btmort$observed,  type="l", las=1, lwd=2, xlim=c(.0001,0.3),
   xlab=c("Significance level"),  #### Brugts study mortality outcome; n set low for speed.
   ylab=c(""), main=c("(a) Brugts; all-cause mortality."))
lines(Btmort$alpha,Btmort$observed)
lines(Btmort$alpha,Btmort$expected, lty=3)
abline(v=0.05, lty=2)
par(new=TRUE)
plot(Btmort$alpha, Btmort$p.value, type="l", xlab="",lty=4,lwd=2,
col="grey", axes=FALSE, ylab="")
abline(h=0.1, lty=2)
axis(4,las=1)
mtext(side=4,line=2.5,"P for difference")
}

