#graphics

x <- 0:3
y <- c(0, 1, 4, 9)

#how do i plot it?
plot(x, y) #it plots the points in a graph. it has x on the x-axis and y on the y-axis. it connects the points with a line
#the dimension must match, so if x has 4 elements, y must have 4 elements too
plot(x, y, pch = 19) #it has thicker points
plot(x, y, type = 'l', col = 'red') #   it plots a line, not points. it has red color

y2 <- c(1, 2, 3, 4)
#i dont write plot cause this way creates a new plot. I write points
points(x, y2) #it adds poits to the previous plot
lines(x, y2) #it adds lines to my previous plot
