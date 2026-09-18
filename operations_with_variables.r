#operations with variables

#declare variables

#i decalare scalar variables, which are one dimensional variables
a <- 2
b <- 4
#in order to make operations with variables, i can use the operators

#vectors
c <- c(1, 2, 3, 4, 5)
d <- rep(10, 3) #i repeat 10 for 3 times
e <- 1:3
f <- rep(10, 5)

#making sum with vectors, it sums the first element of the first vector with the first element of the second vector, and so on
e + f #it gives me error cause they have different lengths

#vector plus scalar
a + e #it adds the value of a to each element of e

#matrixes
M1 <- matrix(1:12, nrow = 4, ncol = 3)
M2 <- rbind(rep(0,3), 1:3, 10:12, c(4, 7, 1)) #this way it creates a matrix in which i specified each rows separeted by commas
M1
M2
M1 + M2 #it sums the first element of the first matrix with the first element of the second matrix, and so on
M1 * M2 #it multiplies the first element of the first matrix with the first element of the second matrix, and so on. IT'S NOT A MATRIX MULTIPLICATION
M1 %*% M2  #errors cause the first matrix should have the same number of columns of the second matrix's rows. It's a matrix multiplication, not a cell by cell multiplication

dim(M1) #it gives me the dimension of the matrix, so how many rows and columns it has
dim(M2)
M2 <- t(M2) #i made a transposition so i can make matrix multiplication
M1 %*% M2

#matrixes and scalars
M2
M2 + 1 #each element of the matrix is summed with 1
M2 * 4 #each element of the matrix is multiplied by 4

e
sum(e) #it gives me a scalar made by the sum of all the elements of the vector
prod(e) #it gives me a scalar made by the product of all the elements of the vector

M1
colSums(M1) #it gives me the sum of each element of each column
rowSums(M1) #it gives me the sum of each element of each row

#boolean variables
a <- 2
b <- 4
bool1 <- TRUE #this way i store true in a variable
bool2 <- a == 1 #this way i store false in a variable
bool1 <- 1 != 2 #it's true, cause != means different
#other boolean op,kerators are: >, <, >=, <=
#boolean are important to make instruction after a condtion

#conditional instructions
if(a == 1){
  #it execute if the condition is true
  cat("condition is true\n")
} else {
  #it execute if the condition is false
  cat("condition is false\n")
}

if(a >= 1){
  cat("condition is true\n")
} else {
  cat("condition is false\n")
}

#loops
for(i in 1:10){ #i is and iterator that assumes every value in 1:10 going on with the loop
  cat("Ciao\n")
  cat(i)
}


e
g <- c(e, f)
g
#i want to operate with each element of g
for(i in 1:length(g)){ #this way the iterator increase by one for as long as g is long
  g[i] <- g[i] - 1 #i change the vale of g in position i
}

#data frames
#data frames are like matrixes, but they can contain different types of variables, so they are more flexible than matrixes. It has as many rows as values i give
exam = data.frame(id = c(1, 2, 3), #id is the name of the first column and each cell of the column contains the values 1, 2 and 3
written = c(20, 30, 40, 50), #written is the name of the second column
projects = c('math', 'science', 'english')) #projects is the name of the third column
exam
exam$id #it gives me the first column of the data frame
id <- exam$written #this way i store the 2nd column of the data frame in a variable
#another way
attach(exam) #now i can accesso separetly my variables, i just write them
id
detach(exam) #i detach the data frame, so now i can't access separetly my variables