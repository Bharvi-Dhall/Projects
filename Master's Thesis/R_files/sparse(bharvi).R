library('Matrix')

# A normal matrix of 1000X1000
m1 <- matrix(0, nrow = 1000, ncol = 1000)

# Generate a sparse matrix of 1000X1000
m2 <- Matrix(0, nrow = 1000, ncol = 1000, sparse = TRUE)

# comparing the memory used
object.size(m1)
#8000216 bytes

object.size(m2)
#5728 bytes

## We can see that RAM used by Matrix class is much more than sparse matrix

#----------------------------------------------------------------------------

#lets add one non zero entry to both matrices and check the memory used

m1[20,20]<-5
m2[20,20]<-5

object.size(m1)
#8000216 bytes 
#here there is no change in the size of the matrix as all the zeros are being represented explicitly

object.size(m2)
# 5744 bytes
# size slightly increases as matrix saves the space by representing only the non-zero entries
