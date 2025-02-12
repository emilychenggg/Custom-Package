\name{bp_measure}
\alias{bp_measure}
\title{Blood Pressure Category Function}
\description{
  This function takes systolic and diastolic values and returns the category of blood pressure.
}
\usage{
bp_measure(systolic, diastolic)
}
\arguments{
  \item{systolic}{A numeric value representing the systolic blood pressure.}
  \item{diastolic}{A numeric value representing the diastolic blood pressure.}
}
\value{
  A string describing the blood pressure category.
}
\examples{
# Example usage of bp_measure function
bp_measure(120, 80)
bp_measure(130, 85)
}
