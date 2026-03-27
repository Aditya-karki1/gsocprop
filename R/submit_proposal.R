#' Submit GSoC Proposal
#'
#' @description 
#' This function checks if you can still submit your GSoC proposal. 
#'
#' @details 
#' The submission deadline is fetched dynamically at install time: 
#' \strong{\Sexpr[stage=install, results=text]{as.character(gsocprop:::gsoc_env$deadline)}}.
#' 
#' \emph{\Sexpr[stage=render, results=text]{
#'   days_left <- as.integer(gsocprop:::gsoc_env$deadline - Sys.Date())
#'   if (days_left > 0) {
#'     paste0("Status: The deadline is in ", days_left, " days.")
#'   } else if (days_left == 0) {
#'     "Status: The deadline is today! Submit immediately."
#'   } else {
#'     "Status: The deadline has passed, try next year!"
#'   }
#' }}
#'
#' @return \code{TRUE} if current date is on or before the deadline,
#'   \code{FALSE} otherwise.
#'
#' @export
#'
#' @examples
#' submit_proposal()
submit_proposal <- function() {
  current_date <- Sys.Date()
  return(current_date <= gsoc_env$deadline)
}