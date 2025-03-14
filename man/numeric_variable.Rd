% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DataVariable.R
\name{numeric_variable}
\alias{numeric_variable}
\title{Create a Numeric Variable}
\usage{
numeric_variable(
  name,
  label = NULL,
  description = NULL,
  group = NULL,
  units = NULL,
  divby_modeling = NULL
)
}
\arguments{
\item{name}{Character.
The name of the variable (required).}

\item{label}{Character.
A short label for the variable (optional).}

\item{description}{Character.
A longer description of the variable (optional).}

\item{group}{Character.
The group or domain this variable belongs to (optional).}

\item{units}{Character.
Variable units (e.g., "kg", "years") (optional).}

\item{divby_modeling}{Numeric.
This constant indicates what the variable's values should be divided by
before modeling. For example, if age is given in years with \code{divby_modeling}
equal to 10, it means that age should be divided by 10 before it is
used in a model, which means the interpretation of, e.g., a regression
coefficient for age, will be expected change per 10 years (optional).}
}
\value{
A \code{NumericVariable} object.
}
\description{
Initializes a \code{NumericVariable} object, typically used to represent
continuous or quantitative data.
}
\examples{
age <- numeric_variable(
  name = "age",
  label = "Age of participant",
  units = "years",
  divby_modeling = 10
)
print(age)

}
