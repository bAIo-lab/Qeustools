% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/test_pair.R
\name{test_pair}
\alias{test_pair}
\title{Test for association between two paired variables.}
\usage{
test_pair(data, var1_name, var2_name, levels = NULL)
}
\arguments{
\item{data}{A dataframe. It is strongly recommended that the dataframe has no missing data and is preprocessed.}

\item{var1_name}{First variable's name.}

\item{var2_name}{Second variable's name.}

\item{levels}{An integer value indicating the maximum number of levels of a categorical variable. To be used to distinguish the categorical variable. Defaults to NULL because it is supposed that \code{data} has been preprocessed using \code{\link[muvis]{data_preproc}} and the categorical variables are specified.}
}
\value{
P.value of test between the two variables.
}
\description{
Tests for association between two variables:
\describe{
\item{Categorical-Categorical}{Using pearson's chi-squared test (chisq.test function from stats package).}
\item{Continuous-Continuous}{Using correlation test (cor.test function from stats package).}
\item{Categorical-Continuous}{Using analysis of variance model (aov function from stats package).}
}
}
\details{
This provides a wrapper to \code{chisq.test}, \code{cor.test}, \code{aov} from \code{stats} package to test association between two variables
}
\examples{
## Preprocess the data
data("NHANES")
data <- data_preproc(NHANES, levels = 15)
## Find test p.values for:
## One continuous and one categorical variable
cont_cat_test <- test_pair(data, var1_name = "LBXTC", var2_name = "RIAGENDR")
## Two continuous variables
cont_cont_test <- test_pair(data, var1_name = "LBXTC", var2_name = "LBXVIE")

## Two categorical variables
cat_cat_test <- test_pair(data, var1_name = "DIQ010", var2_name = "SMD410")

}
\author{
Elyas Heidari
}
