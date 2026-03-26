#' Submit GSoC Proposal
#'
#' @description
#' Checks if you can still submit your GSoC proposal.
#' The deadline is stored in \code{gsoc_env$deadline}.
#'
#' @return \code{TRUE} if current date is on or before the deadline,
#'   \code{FALSE} otherwise.
#'
#' @examples
#' submit_proposal()
#'
#' @export
submit_proposal <- function() {
  current_date <- Sys.Date()
  return(current_date <= gsoc_env$deadline)
}
