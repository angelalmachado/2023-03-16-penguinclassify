#' Classify a penguin
#'
#' Classifies a penguin given the bill length and flipper length.
#'
#' @param bill_length the length of a bill measured in mm
#' @param flipper_length the length of a flipper measured in mm
#'
#'
#' @export
#'
#' @examples
#' classify_penguin(10, 100)

classify_penguin <- function(bill_length, flipper_length) {
  if (!is.numeric(bill_length) | !is.numeric(flipper_length)) {
    stop("Non-numeric input given.")
  }
  if (flipper_length > 205) {
    return("Gentoo")
  } else {
    if (bill_length > 45) {
      return("Chinstrap")
    } else {
      return("Adelle")
    }
  }
}
