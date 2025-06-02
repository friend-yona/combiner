test_that('baselines() returns accurate baseline stats', {
    expect_equal(
        baselines('Tiger'),
        c(Lif = 80, Pow = 90, Int = 130, Ski = 160, Spd = 140, Def = 70)
    )
    expect_equal(
        baselines(main = 'Tiger', sub = 'Gali'),
        c(Lif = 80, Pow = 90, Int = 130, Ski = 150, Spd = 140, Def = 70)
    )
})

test_that('baselines() throws errors for invalid monster types', {
    expect_error(baselines('Human'))
    expect_error(baselines(main = 'Tiger', sub = 'Lion'))
})

test_that('statgains() returns accurate stat gains information', {
    expect_equal(
        statgains('Tiger'),
        c(Lif = 2, Pow = 2, Int = 4, Ski = 5, Spd = 4, Def = 1)
    )
    expect_equal(
        statgains(main = 'Tiger', sub = 'Gali'),
        c(Lif = 2, Pow = 2, Int = 4, Ski = 4, Spd = 3, Def = 2)
    )
})

test_that('statgains() throws errors for invalid monster types', {
    expect_error(statgains('Human'))
    expect_error(statgains(main = 'Tiger', sub = 'Lion'))
})
