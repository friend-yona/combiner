## This is the workhorse function since they both work essentially the same
## (that is, both baselines() and statgains() are just a wrapper for this)
.get_attr = function(main, sub, attr) {
    i = which(combiner::monsters$main == main & combiner::monsters$sub == sub)
    if ( length(i) == 0 ) stop('Invalid main or sub type', call. = FALSE)
    statnames = c('lif', 'pow', 'int', 'ski', 'spd', 'def')
    variables = paste(statnames, attr, sep = '_')
    attribute = unlist(combiner::monsters[i, variables])
    return(setNames(attribute, tools::toTitleCase(statnames)))
}

#' Get Information on a Monster's Stat Baselines and Gains
#'
#' @description
#' `baselines()` returns the monster's baseline stats.
#'
#' `statgains()` returns the monster's stat gain information.
#'
#' @param main The main type of the monster (character)
#' @param sub The sub type of the monster (character)
#'
#' @returns A named numeric vector of six elements, one for each of the Lif,
#'   Pow, Int, Ski, Spd, and Def stats
#'
#' @examples
#' baselines('Tiger')
#' baselines(main = 'Tiger', sub = 'Gali')
#' statgains('Tiger')
#' statgains(main = 'Tiger', sub = 'Gali')
#'
#' @export
baselines = function(main, sub = main) .get_attr(main, sub, 'base')

#' @rdname baselines
#' @export
statgains = function(main, sub = main) .get_attr(main, sub, 'gain')
