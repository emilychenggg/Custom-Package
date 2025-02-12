bp_measure <- function(systolic, diastolic) {
  if (!is.numeric(systolic) | !is.numeric(diastolic)) {
    stop("Both systolic and diastolic must be numeric values.")
  }

  if (systolic <= 0 | diastolic <= 0) {
    stop("Both systolic and diastolic blood pressure must be positive values.")
  }

  category <- ifelse(
    systolic < 120 & diastolic < 80, "Normal",
    ifelse(systolic >= 120 & systolic < 130 & diastolic < 80, "Elevated",
           ifelse((systolic >= 130 & systolic < 140) | (diastolic >= 80 & diastolic < 90), "Hypertension Stage 1",
                  ifelse((systolic >= 140 | diastolic >= 90) & (systolic < 180 & diastolic < 120), "Hypertension Stage 2",
                         ifelse(systolic >= 180 | diastolic >= 120, "Hypertensive Crisis", "Invalid Category")))))

  return(category)
}

