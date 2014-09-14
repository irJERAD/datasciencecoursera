# Question: 3 f(3) = 10
f <- function(x) {
        g <- function(y) {
                y + z
        }
        z <- 4
        x + g(x)
}
z <- 10
f(3)
# Why is f(3) = 10? what is y?

# Question 4: y = 10
x <- 5
y <- if(x < 3) {
        NA
} else {
        10
}

# Question 5: which is a free var [f, z, d, L, g] = f
h <- function(x, y = NULL, d = 3L) {
        z <- cbind(x, d)
        if(!is.null(y))
                z <- z + y
        else
                z <- z + f
        g <- x + y / z
        if(d == 3L)
                return(g)
        g <- g + 10
        g
}