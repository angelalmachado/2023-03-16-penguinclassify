# Test 1: Check if the function returns a dataframe
test_that("get_species returns a dataframe", {
  expect_s3_class(get_species(), "data.frame")
})

# Test 2: Check if the dataframe returned by the function has only one column
test_that("get_species returns a dataframe with one column", {
  expect_equal(ncol(get_species()), 1)
})

# Test 3: Check if the column name of the returned dataframe is 'species'
test_that("get_species returns a dataframe with column name 'species'", {
  expect_equal(colnames(get_species()), "species")
})

# Test 4: Check if the function returns the correct number of rows
test_that("get_species returns a dataframe with the correct number of rows", {
  expect_equal(nrow(get_species()), nrow(palmerpenguins::penguins))
})
