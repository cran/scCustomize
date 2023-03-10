% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Read_&_Write_Data.R
\name{Read_CellBender_h5_Mat}
\alias{Read_CellBender_h5_Mat}
\title{Load CellBender h5 matrices (corrected)}
\usage{
Read_CellBender_h5_Mat(file_name, use.names = TRUE, unique.features = TRUE)
}
\arguments{
\item{file_name}{Path to h5 file.}

\item{use.names}{Label row names with feature names rather than ID numbers (default TRUE).}

\item{unique.features}{Make feature names unique (default TRUE).}
}
\value{
sparse matrix
}
\description{
Extract sparse matrix with corrected counts from CellBender h5 output file.
}
\examples{
\dontrun{
mat <- Read_CellBender_h5_Mat(file_name = "/SampleA_out_filtered.h5")
}

}
\references{
Code used in function has been modified from \code{Seurat::Read10X_h5} function of
Seurat package \url{https://github.com/satijalab/seurat} (License: GPL-3).
}
\concept{read_&_write}
