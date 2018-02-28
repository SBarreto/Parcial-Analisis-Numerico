rm(list=ls())

matriz<- function(n)
{
	
	mat<- matrix(rexp(200), n, n)
	print(mat)
	mat[lower.tri(mat)] <- 0
	print(mat)
	sum <- 0
	for (val in mat){
		#if(val!=0) 	
		sum<-sum+val
	}
	cat("suma de submatriz triangular superior: ", sum)
}