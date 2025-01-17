% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/totalproj.R
\name{totalproj}
\alias{totalproj}
\title{Produce total projects or grants}
\usage{
totalproj(projdata, lattesdata, collabs = NULL)
}
\arguments{
\item{projdata}{table (data frame format) derived by \code{\link{listproj}}
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
It uses the list of projects (data frame format) derived by
\code{\link{listproj}} so as to produce a summary of total projects,
as well as discriminanting the number of grants in each of a set of main
Brazilian and International funding agencies (e.g. CNPq, CAPES, FAPs, MMA,
Fiocruz, NSF, NERC, Royal Society, WHO, FAO, etc)
}
\examples{
\dontrun{
path_lattes <- paste0(system.file("lattes", package = "NUPEX"),
                      "/lattes2.xml")
lattes_data <- get_lattes(path_lattes)
lproj <- listproj(lattes_data,
                  quadre = c(2017, 2020))
tproj <- totalproj(lproj,
                   lattes_data)

path_lattes_folder <- system.file("lattes", package = "NUPEX")
lattes_folder_data <- get_lattes_folder(path_lattes_folder)
lproj <- listproj(lattes_folder_data,
                  quadre = c(2017, 2020))
collaborators <- c("Suzana Telles da Cunha Lima",
                   "ClÃ¡udia Dias de Santana")
tproj <- totalproj(lproj,
                   lattes_folder_data,
                   collabs = collaborators)
}

}
\author{
Domingos Cardoso
}
