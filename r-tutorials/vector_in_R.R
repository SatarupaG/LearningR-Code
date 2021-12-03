vec1 <- c(1,2,3)
class(vec1)
vec2 <- c("a","b","c")
class(vec2)
vec3 <- c(TRUE,FALSE,TRUE)
class(vec3)

# logical values are converted into numerical values (numeric>logical)
mixbag1 <- c(1,TRUE,2,FALSE)

# numeric values are converted into numerical values (character>numeric)
mixbag2 <- c(1,"a",2,"b",3)

# logical and logical values are converted into numerical values (character>numeric>logical)
mixbag3 <- c(1,"a",TRUE,2,"b",FALSE)

mixbag3[2]
mixbag3[6]
mixbag3[3:5]
mixbag3[c(1,6)]

