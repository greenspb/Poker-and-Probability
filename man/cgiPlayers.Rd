% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/poker.R
\name{cgiPlayers}
\alias{cgiPlayers}
\title{cgiPlayers}
\usage{
cgiPlayers(time, alias, position, cards)
}
\arguments{
\item{time}{: \tabular{ll}{the current round as    integer in \{1, 2, 3, 4\} \tab \cr \tab
1 = pre-flop \cr \tab
2 = flop \cr \tab
3 = turn \cr \tab
4 = river}}

\item{alias}{names of players    as                vector[nPlayers]}

\item{position}{dealer position as             integer in \{2, ..., nPlayers\}}

\item{cards}{: \tabular{ll}{the 7 card hand as
matrix[nPlayers, 14] \tab \cr \tab
col1: rank of card 1 in \{2, ... , 14\} \cr \tab
col2: suit of card 1 in \{1, 2, 3, 4\} \cr \tab
col3: rank of card 2 \cr \tab
col4: suit of card 2 \cr \tab
. \cr \tab
. \cr \tab
. \cr \tab
col13: rank of card 7 \cr \tab
col14: suit of card 7}}
}
\value{
In lieu of a return value, cgiPlayers calls the plot() function.
}
\description{
A primitive method (i.e., does not support classes) for graphics using the plot() function. Built-in support for 2-9 players.  This function was written on a Mac and may not be PC-compatible (yet). You must have already called cgiPlayers(time=1, ...) before calling cgiPlayers(time=2, ...), you must have already called cgiPlayers(time=1, ...) and cgiPlayers(time=2, ...) before calling cgiPlayers(time=3, ...), etc.
}
\examples{
alias <- c("Player1","Player2","Player3","Player4","Player5")
alias <- c(alias,"Player6","Player7","Player8","Player9")
cols1thru5 <- c(2,8,12,14,10,6,14,8,4,2,3,2,4,1,4,3,1,1,13,4,4,5,3,9,8,12,7)
cols1thru5 <- c(cols1thru5,3,4,3,2,2,4,2,1,1,3,3,3,3,3,3,3,3,3)
cols6thru10 <- c(1,1,1,1,1,1,1,1,1,10,10,10,10,10,10,10,10,10,4,4,4,4,4,4,4,4,4)
cols6thru10 <- c(cols6thru10,12,12,12,12,12,12,12,12,12,4,4,4,4,4,4,4,4,4)
cols11thru14 <- c(11,11,11,11,11,11,11,11,11,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2)
cols11thru14 <- c(cols11thru14,3,3,3,3,3,3,3,3,3)
cards <- matrix(c(cols1thru5,cols6thru10,cols11thru14),nrow=9,ncol=14); cards
cgiPlayers(1,alias,9,cards)
cgiPlayers(2,alias,9,cards)
cgiPlayers(3,alias,9,cards)
cgiPlayers(4,alias,9,cards)
}
