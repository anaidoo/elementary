test_that("whodunnit test default", {
  expect_equal(length(whodunnit()), 1)
})

test_that("whodunnit non default", {
  expect_equal(length(whodunnit(2)), 2)
})

test_that("whodunnit test error", {
  expect_error(length(whodunnit('e')))
})
