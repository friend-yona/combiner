#' Data on Monsters From Monster Rancher 2
#'
#' Certain attributes of monsters are relevant for determining combining
#' outcomes, specifically the parent monsters' stats, the 'baseline' stats for
#' the baby, and a 'stat gain' attribute that determines both how easily the
#' monster can improve that stat through training and how heavily that stat is
#' weighted in determining the combining outcome.
#'
#' @format ## `monsters`
#'   A dataframe with 333 rows and 17 columns:
#'   \describe{
#'      \item{monster}{A unique identifier for the monster breeds, with the
#'        format 'main/sub', where 'main' is replaced with the monster's main
#'        type and 'sub' is replaced with the monster's sub type (see
#'        [`mr2types`][`combiner::mr2types`])}
#'      \item{main}{The main type of the monster (character)}
#'      \item{sub}{The sub type of the monster (character)}
#'      \item{lif_base}{The base 'Life' statistic for the monster at birth
#'        (numeric)}
#'      \item{pow_base}{The base 'Power' statistic for the monster at birth
#'        (numeric)}
#'      \item{int_base}{The base 'Intelligence' statistic for the monster at
#'        birth (numeric)}
#'      \item{ski_base}{The base 'Skill' statistic for the monster at birth
#'        (numeric)}
#'      \item{spd_base}{The base 'Speed' statistic for the monster at birth
#'        (numeric)}
#'      \item{def_base}{The base 'Defense' statistic for the monster at birth
#'        (numeric)}
#'      \item{lif_gain}{The stat gain for the monster, where 1 means very poor
#'        gains and 5 means very high gains, which affect baby monster's stats
#'        (see `vignette("breeding", package = 'combiner')`) (numeric)}
#'      \item{pow_gain}{The stat gain for the monster (numeric)}
#'      \item{int_gain}{The stat gain for the monster (numeric)}
#'      \item{ski_gain}{The stat gain for the monster (numeric)}
#'      \item{spd_gain}{The stat gain for the monster (numeric)}
#'      \item{def_gain}{The stat gain for the monster (numeric)}
#'      \item{tot_gain}{The total of the monster's stat gains (numeric)}
#'      \item{lifespan}{The monster's base lifespan in weeks (character)}
#'   }
#'
#' @source This data is largely compiled from the GameFAQs Monster Rancher 2:
#'   Walkthrough FAQ and Monster Rancher 2: Combining FAQ by Kurasu Soratobu,
#'   available at <https://tinyurl.com/4s5677j9>.
#'
#' @seealso [`mr2types`][`combiner::mr2types`]
"monsters"

#' A Vector of all Valid Monster Rancher 2 Types
#'
#' When constructing a 'Monster' class object, you must provide a main and a
#' sub type for the monster. There are only so many types of monsters in
#' Monster Rancher 2, so this object provides the names of all the valid
#' monster types.
#'
#' @details
#' There are 38 monster types in Monster Rancher 2:
#' * Ape
#' * Arrow Head
#' * Bajarl
#' * Baku
#' * Beaclon
#' * Centaur
#' * Color Pandora
#' * Dragon
#' * Ducken
#' * Durahan
#' * Gaboo
#' * Gali
#' * Ghost
#' * Golem
#' * Hare
#' * Henger
#' * Hopper
#' * Jell
#' * Jill
#' * Joker
#' * Kato
#' * Metalner
#' * Mew
#' * Mocchi
#' * Mock
#' * Monol
#' * Naga
#' * Niton
#' * Phoenix
#' * Pixie
#' * Plant
#' * Suezo
#' * Tiger
#' * Undine
#' * Worm
#' * Wracky
#' * Zilla
#' * Zuum
#'
#' Note that in this object, Arrow Head is recorded as "ArrowHead" and Color
#' Pandora is recorded as "ColorPandora".
#'
#' @format ## `mr2types`
#' A character vector giving all the valid monster types
"mr2types"
