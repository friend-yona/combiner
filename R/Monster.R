#' Create a 'Monster' class object
#'
#' @param main The main type of the monster (character vector of length one)
#' @param sub The sub type of the monster (character vector of length one)
#' @param stats (Optional). The monster's six stats, Lif, Pow, Int, Ski, Spd,
#'   and Def. If `NULL` (the default), the baseline baby stats for the monster
#'   are used. (*must* be a numeric vector of length six)
#'
#' @returns A 'Monster' class object
#'
#' @examples
#' Monster(main = "Tiger", sub = "Gali")
#' Monster(main = "Mocchi", stats = c(300, 350, 350, 500, 400, 450))
#'
#' @export
Monster = function(main, sub = main, stats = NULL) {
    ## Make sure Arrow Head and Color Pandora don't have a space
    main = gsub(' ([[:upper:]])', '\\1', main)
    sub  = gsub(' ([[:upper:]])', '\\1', sub)
    ## Monster type sanity check
    main_invalid = !(main %in% combiner::mr2types)
    sub_invalid  = !(sub  %in% combiner::mr2types)
    if ( main_invalid | sub_invalid ) {
        msg = '"main" & "sub" must specify a valid type. See help("mr2types").'
        stop(msg, call. = FALSE)
    }
    ## Do sanity checks for user provided stats or assign baseline stats
    if ( is.null(stats) ) {
        stats = baselines(main, sub)
    } else if ( !is.numeric(stats) | length(stats) != 6 ) {
        stop('"stats" should be a 6 element numeric vector.', call. = FALSE)
    } else {
        names(stats) = c('Lif', 'Pow', 'Int', 'Ski', 'Spd', 'Def')
    }
    if ( !all(stats %in% 0:999) ) {
        stop('Each stat should be an integer from 0 to 999', call. = FALSE)
    }
    ## Pull the stat gains from our monster data
    gains = statgains(main, sub)
    ## Create the actual underlying object, a list
    res = list(main = main, sub = sub, stats = stats, gains = gains)
    ## Return the list with the class set
    return(structure(.Data = res, class = c('Monster', 'list')))
}
