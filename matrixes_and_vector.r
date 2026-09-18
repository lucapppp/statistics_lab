#matrixes and vectors

#vectors
v1 <- c(1, 2, 3) #this way i declare and store vectors
letters <- c('l', 'u', 'c', 'a') #a vector can be of numbers, i declare it with virgolette

v2 <- 1:10 #i have all number from 1 to 10
v3 <- seq(0, 5, by = 0.2) #seq stands for sequence. this way i have a vector from 0 to 5 distanced by 0.2. Pay attention, it's 0.2, not 0,2 otherwise it's a casino
help(seq) #help mi dice cosa fa una variabile, faster than chatgpt

v4 <- rep(3, 10) #i repeate number 3 for ten times

#i can bind vectors
v5 <- c(v3, v4)
v5

#matrixes
matrix(0, nrow = 3, ncol = 4) #that's a 3x4 matrix with just 0
M1 <- matrix(1:12, nrow = 4, ncol = 3) #it fills my 4x3 matrix with numbers from 1 to 12. Of course i have to have 12 elements if i say 1:12, otherwise it gives me error
M2 <- matrix(1:12, nrow = 4, ncol = 3, byrow = TRUE) #it starts to fill the rows first
M2

#i can build matrixes by binding vectors
v6 <- c(1, 2, 3)
v7 <- c(4, 5, 6, 7, 8, 9) #to cbind the member of the first vector needs tp be a multiple of the member of second vector
M3 <- cbind(v6, v7) #it binds columns. It creates a matrix with v6 and v7 next to each other
M3

M4 <- rbind(v6, v7) #it binds rows
M4

M5 <- t(M4) #i create a transposition (it inverts columns and rows)
M5

is.matrix(v6) #it tells me if v6 is a matrix
v6 <- as.matrix(v6)
is.matrix(v6) #it becomes a matrix with one column as rows as the number of elements. Than each cell is filled with its values
v6

length(v6) #it says its length
v6[2] #tell me the 2nd element (ofc if i say 4 it gives me NA cause it's not that big)
v6[4] #NA
v6[1:2] #i access 1st and 2th element
v6[c(1,3)] #i say elements i want to access

M3
M3[3, 2] #this way i reach the element in 2nd row and 2nd column
M3[1:2, 2] #first two rows but just second column
M3[1,] #it gives me first row, all the columns
M3[,2] #it gives me the second column, all the rows

ls() #it says the names of the objects in the specified environment. It's the list of all the elements in my environment
rm(M3) #it remove M3
rm(list = ls()) #rm list removes all the elements i give him, so if i say list = ls(), it removes every element, cause ls() is the list of every variable in the environment
