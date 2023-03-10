% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/LIGER_Utilities.R
\name{Meta_Present_LIGER}
\alias{Meta_Present_LIGER}
\title{Check if meta data are present}
\usage{
Meta_Present_LIGER(liger_object, meta_col_names, print_msg = TRUE)
}
\arguments{
\item{liger_object}{object name.}

\item{meta_col_names}{vector of column names to check.}

\item{print_msg}{logical. Whether message should be printed if all features are found.  Default is TRUE.}
}
\value{
vector of meta data columns that are present
}
\description{
Check if meta data columns are present in object and return vector of found columns  Return warning
messages for meta data columns not found.
}
\examples{
\dontrun{
meta_variables <- Meta_Present_LIGER(liger_object = obj, gene_list = DEG_list, print_msg = TRUE)
}

}
\concept{liger_object_util}
