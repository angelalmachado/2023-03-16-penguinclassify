#' Returns the species column for Palmerpenguins
#' @return dataframe of 1 column from the palrmer penguins dataframe
#' @export
#'
#' @importFrom rlang .data
#' @importFrom dplyr select
#' @import palmerpenguins

get_species <- function() {
  palmerpenguins::penguins %>%
    dplyr::select(.data$species)
}
