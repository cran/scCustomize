% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Utilities.R
\name{Gene_Present}
\alias{Gene_Present}
\title{Check if genes/features are present  \ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#soft-deprecated}{\figure{lifecycle-soft-deprecated.svg}{options: alt='[Soft-deprecated]'}}}{\strong{[Soft-deprecated]}}}
\usage{
Gene_Present(
  data,
  gene_list,
  case_check = TRUE,
  case_check_msg = TRUE,
  print_msg = TRUE,
  omit_warn = TRUE,
  return_none = FALSE,
  seurat_assay = NULL
)
}
\arguments{
\item{data}{Name of input data.  Currently only data of classes: Seurat, liger, data.frame,
dgCMatrix, dgTMatrix, tibble are accepted.  Gene_IDs must be present in rownames of the data.}

\item{gene_list}{vector of genes to check.}

\item{case_check}{logical. Whether or not to check if features are found if the case is changed from the
input list (Sentence case to Upper and vice versa).  Default is TRUE.}

\item{case_check_msg}{logical. Whether to print message to console if alternate case features are found
in addition to inclusion in returned list.  Default is TRUE.}

\item{print_msg}{logical. Whether message should be printed if all features are found.  Default is TRUE.}

\item{omit_warn}{logical. Whether to print message about features that are not found in current object.
Default is TRUE.}

\item{return_none}{logical. Whether list of found vs. bad features should still be returned if no
features are found.  Default is FALSE.}

\item{seurat_assay}{Name of assay to pull feature names from if \code{data} is Seurat Object.
Default is NULL which will check against features from all assays present.}
}
\value{
A list of length 3 containing 1) found features, 2) not found features, 3) features found if
case was modified.
}
\description{
Check if genes are present in object and return vector of found genes.  Return warning messages for
genes not found.
}
\examples{
\dontrun{
features <- Gene_Present(data = obj_name, gene_list = DEG_list, print_msg = TRUE, case_check = TRUE)
found_features <- features[[1]]
}

}
\concept{check_util}
