% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/totalsuperv.R
\name{totalsuperv}
\alias{totalsuperv}
\title{Produce total of supervisions}
\usage{
totalsuperv(supervdata, lattesdata, collabs = NULL)
}
\arguments{
\item{supervdata}{table (data frame format) derived by \code{\link{listsuperv}}
function, which has to be used so as to get the total number of granted projects}

\item{lattesdata}{table (tibble format) derived by \code{\link{get_lattes}} or
\code{\link{get_lattes_folder}}}

\item{collabs}{vector containing the complete names of collaborators for the
Graduate Program; the provided names have to be exactly as shown in their
Lattes profiles; the non-listed collaborators will automatically have their
"VINCULO" defined as "Permanente"}
}
\value{
Table in data frame format
}
\description{
It uses the list (data frame format) of ongoing and finished
supervisions derived by \code{\link{listsuperv}} so as to produce a summary
of total supervisions
}
\examples{
\dontrun{
path_lattes <- paste0(system.file("lattes", package = "NUPEX"),
                      "/lattes2.xml")
lattes_data <- get_lattes(path_lattes)
lsuperv <- listsuperv(lattes_data,
                      quadre = c(2017, 2020))
tsuperv <- totalsuperv(lsuperv,
                       lattes_data,
                       collabs = collaborators)

path_lattes_folder <- system.file("lattes", package = "NUPEX")
lattes_folder_data <- get_lattes_folder(path_lattes_folder)
lsuperv <- listsuperv(lattes_folder_data,
                      quadre = c(2017, 2020))
collaborators <- c("Suzana Telles da Cunha Lima",
                   "ClÃ¡udia Dias de Santana")
tsuperv <- totalsuperv(lsuperv,
                       lattes_folder_data,
                       collabs = collaborators)
}

}
\author{
Domingos Cardoso
}
