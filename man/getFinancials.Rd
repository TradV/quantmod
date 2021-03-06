\name{getFinancials}
\alias{getFinancials}
\alias{viewFinancials}
\alias{getFin}
\alias{viewFin}
\title{ Download and View Financial Statements }
\description{
Download Income Statement, Balance Sheet, and Cash Flow Statements.
}
\usage{
getFinancials(Symbol, env = parent.frame(), src = "google", 
              auto.assign = TRUE,
              ...)

viewFinancials(x, type=c('BS','IS','CF'), period=c('A','Q'),
               subset = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{Symbol}{ one or more valid google symbol, as a character vector or
  semi-colon delimited string }
  \item{env}{ where to create the object }
  \item{src}{ currently no sources are implemented }
  \item{auto.assign}{ should results be loaded to the environment }
  \item{\dots}{ currently unused }
  \item{x}{ an object of class financials }
  \item{type}{ type of statement to view }
  \item{period}{ period of statement to view }
  \item{subset}{ \sQuote{xts} style subset string }
}
\details{
A utility to download financial statements for publicly traded companies.

Individual statements can be accessed using
standard \R list extraction tools, or by
using \code{viewFinancials}.

\code{viewFinancials} allows for the use of
date subsetting as available in the \pkg{xts}
package, as well as the specification of
the type of statement to view. BS for balance
sheet, IS for income statement, and CF for cash flow
statement. The period argument is used to identify
which statements to view - (A) for annual and (Q)
for quarterly.
}
\value{
  Six individual matrices organized in a list of class \sQuote{financials}:
  \item{ IS }{ a list containing (Q)uarterly and (A)nnual Income Statements }
  \item{ BS }{ a list containing (Q)uarterly and (A)nnual Balance Sheets }
  \item{ CF }{ a list containing (Q)uarterly and (A)nnual Cash Flow Statements }
}
\author{ Jeffrey A. Ryan }
\note{
As with all free data, you may be getting exactly what you pay for.
Sometimes that may be absolutely nothing.
}
\examples{
\dontrun{
getFinancials('JAVA')  # returns JAVA.f to "env"
getFin('AAPL') # returns AAPL.f to "env"

viewFin(JAVA.f, "IS", "Q")  # Quarterly Income Statement
viewFin(AAPL.f, "CF", "A")   # Annual Cash Flows

str(AAPL.f)
}
}
\keyword{ utilities }
