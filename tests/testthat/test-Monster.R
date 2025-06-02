example1 = structure(.Data = list(
    main = 'Tiger', sub = 'Gali',
    stats = c(Lif = 80, Pow = 90, Int = 130, Ski = 150, Spd = 140, Def = 70),
    gains = c(Lif =  2, Pow =  2, Int =   4, Ski =   4, Spd =   3, Def = 2)
), class = c('Monster', 'list'))
example2 = structure(.Data = list(
    main = 'Mocchi', sub = 'Mocchi',
    stats = c(Lif = 300, Pow = 350, Int = 350, Ski = 500, Spd = 400, Def = 450),
    gains = c(Lif =   3, Pow =   3, Int =   3, Ski =   4, Spd =   4, Def =   4)
), class = c('Monster', 'list'))

test_that("Monster() gives correct baseline info", {
    expect_equal(Monster(main = 'Tiger', sub = 'Gali'), example1)
})

test_that('Monster() works with stats provided correctly by the user', {
    expect_equal(
        Monster(main = "Mocchi", stats = c(300, 350, 350, 500, 400, 450)),
        example2
    )
})

test_that('Monster() throws an error when stats are given invalidly', {
    expect_error(Monster('Tiger', stats = letters[1:6]))
    expect_error(Monster('Tiger', stats = 1:7))
    expect_error(Monster('Tiger', stats = c(1000, 100, 100, 100, 100, 100)))
})

test_that('Monster() throws an error when given an invalid type', {
    expect_error(Monster('Human'))
    expect_error(Monster(main = 'Tiger', sub = 'Lion'))
})
