% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/poker.R
\name{deal}
\alias{deal}
\title{deal}
\usage{
deal(nPlayers, position)
}
\arguments{
\item{nPlayers}{number of hands to deal as 
integer in \{2, ... , 9\}}

\item{position}{dealer position         as integer in \{2, ..., nPlayers\}}
}
\value{
y : cards dealt in hole			as vector[nCards] in \{1, 2, ..., 52\}
}
\description{
Generate Player+Community cards = 2x(nPlayers)+5 cards.
}
\examples{
deal(9,9)
deal(9,1)
}
