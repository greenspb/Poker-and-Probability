% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/poker.R
\name{dotTwoPairs}
\alias{dotTwoPairs}
\title{dotTwoPairs}
\usage{
dotTwoPairs(nPlayers, cards, score)
}
\arguments{
\item{nPlayers}{number of hands as        integer in \{2, ... , 9\}}

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

\item{score}{: \tabular{ll}{the score of the hand in absolute terms as
vector[nPlayers] \tab \cr \tab
 9 = Straight Flush \cr \tab
 8 = Four of a Kind \cr \tab
 7 = Full House \cr \tab
 6 = Flush \cr \tab
 5 = Straight \cr \tab
 4 = Three of a Kind \cr \tab
 3 = Two Pair \cr \tab
 2 = One Pair \cr \tab
 1 = High Card}}
}
\value{
winner : absolute position of the winner as
											vector
}
\description{
Determine the player(s) with the highest two pairs and kicker card.
}
\examples{
cards <- c(2,3,4,5,1,1,1,1,2,3,6,7,2,2,2,2,4,4,4,4,3,3,3,3,11,11,11,11,3,3,3,3)
cards <- c(cards,13,13,13,13,3,3,3,3,14,14,14,14,3,3,3,3,14,14,14,14,4,4,4,4)
cards <- matrix(cards,nrow=4,ncol=14); cards
score <- showdown(cards); score
nPlayers <- nrow(cards); nPlayers
dotTwoPairs(nPlayers,cards,score)
}
\seealso{
\code{\link{dotTwoPairRanker}} and \code{\link{dotHighcardCompare}}
}
