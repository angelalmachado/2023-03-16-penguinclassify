# Test 1: Check if it correctly classifies a Gentoo penguin
test_that("classify_penguin correctly identifies Gentoo penguins", {
  expect_equal(classify_penguin(50, 210), "Gentoo")
})

# Test 2: Check if it correctly classifies a Chinstrap penguin
test_that("classify_penguin correctly identifies Chinstrap penguins", {
  expect_equal(classify_penguin(50, 180), "Chinstrap")
})

# Test 3: Check if it correctly classifies an Adelle penguin
test_that("classify_penguin correctly identifies Adelle penguins", {
  expect_equal(classify_penguin(40, 180), "Adelle")
})

# Test 4: Check if it correctly handles edge case values for bill_length
test_that("classify_penguin handles edge case values for bill_length", {
  expect_equal(classify_penguin(46, 180), "Chinstrap")
  expect_equal(classify_penguin(44.9, 180), "Adelle")
})

# Test 5: Check if it correctly handles edge case values for flipper_length
test_that("classify_penguin handles edge case values for flipper_length", {
  expect_equal(classify_penguin(50, 205), "Chinstrap")
  expect_equal(classify_penguin(50, 205.1), "Gentoo")
})

# Test 6: Check if it correctly handles non-numeric input values
test_that("classify_penguin correctly handles non-numeric input values", {
  expect_error(classify_penguin("string", 180))
  expect_error(classify_penguin(50, "string"))
})
