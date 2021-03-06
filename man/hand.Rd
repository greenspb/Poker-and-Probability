% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/poker.R
\name{hand}
\alias{hand}
\title{hand}
\usage{
hand(players, board)
}
\arguments{
\item{players}{: \tabular{ll}{the hole cards as            matrix[nPlayers, 4] \tab \cr \tab
col1: rank of card 1 in \{2, ... , 14\} \cr \tab
col2: suit of card 1 in \{1, 2, 3, 4\} \cr \tab
col3: rank of card 2 \cr \tab
col4: suit of card 2}}

\item{board}{the board cards    as        vector[5] in \{1, 2, ..., 52\}}
}
\value{
\tabular{ll}{cards : the 7 card hand as
											matrix[nPlayers, 14] \tab \cr \tab
											col1: rank of card 1 in \{2, ... , 14\} \cr \tab 
											col2: suit of card 1 in \{1, 2, 3, 4\} \cr \tab
											col3: rank of card 2 \cr \tab
											col4: suit of card 2 \cr \tab
											. \cr \tab
											. \cr \tab
											. \cr \tab
											col13: rank of card 7 \cr \tab
											col14: suit of card 7}
}
\description{
Assemble the 7 card hands.
}
\examples{
hand(matrix(1:18,9,2,byrow=TRUE),19:23)
hand(matrix(c(1:9,14:22),9,2),48:52)
}
\seealso{
\code{\link{dotTransformToRank}} and \code{\link{dotTransformToSuit}}
}
