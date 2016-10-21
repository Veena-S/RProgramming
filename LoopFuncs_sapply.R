# The sapply() function behaves similarly to lapply(); 
# the only real difference is in the return value.
# sapply() will try to simplify the result of lapply() if possible.
# Essentially, sapply() calls lapply() on its input and
# then applies the following algorithm:
#     • If the result is a list where every element is length 1, 
#       then a vector is returned
#     • If the result is a list where every element is a vector of the same 
#       length (> 1), a matrix is returned.
#     • If it can’t figure things out, a list is returned

x <- list(a = 1:4, b = rnorm(10), c = rnorm(20, 1), d = rnorm(100, 5))
lapply(x, mean)

sapply(x, mean)

