
#' Generate a rumour
#'
#' @param suspect the suspect
#' @param weapon a weapon
#' @param room the room
#'
#' @return a rumour, who did it, in what room, with what weapon
#'
#' @importFrom  glue glue
#' @examples
rumour <- function(suspect, weapon, room) {
  return(glue::glue("I think {suspect} did it in the {room} with the {weapon}"))
}

#' Whodunnit
#'
#' @param x how many rumours do you want returned
#'
#' @return x number of rumours
#' @export
#'
#' @importFrom purrr pmap_chr
#'
#' @examples
#' whodunnit()
#' whodunnit(5)
whodunnit <- function(x = 1) {
  if (is.character(x)) {
    stop("whodunnit needs an integer input")
  }

  if (x %% 1 != 0) {
    stop("whodunnit needs an integer input")
  }

  suspects <- c(
    "Mrs. White", "Reverend. Green", "Mrs. Peacock",
    "Professor Plum", "Miss Scarlet", "Colonel Mustard"
  )
  weapons <- c(
    "Ax", "Bat", "Candlestick", "Dumbbell", "Pistol",
    "Poison", "Trophy", "Knife", "Rope"
  )
  rooms <- c(
    "Hall", "Guest House", "Dining Room", "Kitchen",
    "Patio", "Spa", "Theatre", "Living Room", "Observatory"
  )

  suspect = sample(suspects, x, replace = T)
  weapon = sample(weapons, x, replace = T)
  room = sample(rooms, x, replace = T)

  rumours = data.frame(suspect, weapon, room)

  return(purrr::pmap_chr(rumours, rumour))
}
