A = matrix(c(2,1,0,1,2,1,0,1,2),ncol=3); A
P = matrix(c(1,0,0,0,0,1,0,1,0),ncol=3); P
P%*%A


# 5.1.7 5.1절 연습문제

#연습문제 5.1.1
M = matrix(c(1/3,1/3,1/3,  1/2,0,1/2, 0,1/2,1/2  ), nrow=3)
r = matrix(c(1/3,1/3,1/3), nrow=3)

pre_r = r
r = M%*%r

while(pre_r != r ){
  pre_r = r
  r = M%*%r
}
r


#연습문제 5.1.2
M = matrix(c(1/3,1/3,1/3,  1/2,0,1/2, 0,1/2,1/2  ), nrow=3)
r = matrix(c(1/3,1/3,1/3), nrow=3)
beta = 0.8
matrix_N = matrix(c(1/3,1/3,1/3,1/3,1/3,1/3,1/3,1/3,1/3), nrow=3)
A  = beta * M + (1-beta) *matrix_N

pre_r = r
r = A%*%r

while(pre_r != r ){
  pre_r = r
  r = A%*%r
}

r

#Symbolic Computation in R http://www.di.fc.ul.pt/~jpn/r/symbolic/
library(rSymPy)
sessionInfo()
Sys.setenv(JAVA_HOME = 'C:\\Program Files\\Java\\jre1.8.0_251')
#error? --> solution : install java http://egloos.zum.com/greentec/v/4176464

x <- Var("asdf")
#error Error in .jcheck() : No running JVM detected. Maybe .jinit() would help.
library(rJava)
.jinit()
#Error in .jcall("RJavaTools", "Z", "hasField", .jcast(x, "java/lang/Object"),  : java.lang.NullPointerException

sympy("sqrt(8).evalf()")

#음... 모르겠다.!!
maxima로 시도 해 보자. SymPy도 있고 numpy로 행렬곱 가능하다. 

x+x

#연습문제 5.1.3
M = matrix(c(0, 1/3 ,1/3 ,0 ,1/3 ,  
             1/3, 0, 1/3 , 1/3 ,1/3,  
             1/3 ,1/3 ,0 ,1/3 ,1/3,  
             1/3, 1/3, 1/3, 0, 1/3,   
             0, 0, 0, 0, 0), nrow = 5)
M
beta = 1
matrix_N = matrix(c(1/5, 1/5, 1/5, 1/5, 1/5, 1/5, 1/5, 1/5, 1/5, 1/5, 1/5, 1/5, 1/5, 1/5, 1/5, 1/5, 1/5, 1/5, 1/5, 1/5, 1/5, 1/5, 1/5, 1/5, 1/5) ,nrow=5 )
matrix_N
A = beta * M + (1-beta) * matrix_N

pre_r = r
r = A%*%r

while(pre_r != r ){
  pre_r = r
  r = A%*%r
}

#연습문제 5.1.5

#연습문제 5.1.6
M = matrix(c(1/2,1/2,0,0,0,
             0,0,1,0,0,
             0,0,0,1,0,
             0,0,0,0,1,
             0,0,0,0,0), nrow = 5)
r = matrix(c(1/5, 1/5, 1/5, 1/5, 1/5), nrow = 5)
beta = 0.7
matrix_N = matrix(c(1/5, 1/5, 1/5, 1/5, 1/5, 1/5, 1/5, 1/5, 1/5, 1/5, 1/5, 1/5, 1/5, 1/5, 1/5, 1/5, 1/5, 1/5, 1/5, 1/5, 1/5, 1/5, 1/5, 1/5, 1/5) ,nrow=5 )
matrix_N
A = beta * M + (1-beta) * matrix_N

pre_r = r
r = A%*%r

while(pre_r != r ){
  pre_r = r
  r = A%*%r
}
r
r


#연습문제 5.3.1 
#a)
M = matrix(c(0, 1/3 ,1/3 ,1/3,
             1/2,0,0,1/2,
             1,0,0,0,
             0, 1/2 , 1/2, 0),nrow = 4)
r = matrix(c(1/4,1/4,1/4,1/4))
beta = 0.8

es = matrix(c(1,0,0,0),nrow=4)
s = 1
pre_r = r
r = (beta*M)%*%r + (1-beta)/s * es
while(pre_r != r ){
  pre_r = r
  r = (beta*M)%*%r + (1-beta)/s * es
}
r

#b)
M = matrix(c(0, 1/3 ,1/3 ,1/3,
             1/2,0,0,1/2,
             1,0,0,0,
             0, 1/2 , 1/2, 0),nrow = 4)
r = matrix(c(1/4,1/4,1/4,1/4))
beta = 0.8

es = matrix(c(1,0,1,0),nrow=4)
s = 2
pre_r = r
r = (beta*M)%*%r + (1-beta)/s * es
while(pre_r != r ){
  pre_r = r
  r = (beta*M)%*%r + (1-beta)/s * es
}
r







#연습문제 5.4
#a)#######################################################################
#trusted rank
M = matrix(c(0, 1/3 ,1/3 ,1/3,
             1/2,0,0,1/2,
             1,0,0,0,
             0, 1/2 , 1/2, 0),nrow = 4)
r = matrix(c(1/4,1/4,1/4,1/4))
beta = 0.8

es = matrix(c(0,1,0,0),nrow=4)
s = 1
pre_r = r
r = (beta*M)%*%r + (1-beta)/s * es
while(pre_r != r ){
  pre_r = r
  r = (beta*M)%*%r + (1-beta)/s * es
}
r
t =r
#######################################################################
#page rank - method 1
M = matrix(c(0, 1/3 ,1/3 ,1/3,
             1/2,0,0,1/2,
             1,0,0,0,
             0, 1/2 , 1/2, 0),nrow = 4)
r = matrix(c(1/4,1/4,1/4,1/4))
beta = 0.8
matrix_N = matrix(c(1/4,1/4,1/4,1/4,1/4,1/4,1/4,1/4,1/4,1/4,1/4,1/4,1/4,1/4,1/4,1/4) ,nrow=4)
matrix_N
A = beta * M + (1-beta) * matrix_N

pre_r = r
r = A%*%r

while(pre_r != r ){
  pre_r = r
  r = A%*%r
}
r

#####################################################
#page rank - method 2
M = matrix(c(0, 1/3 ,1/3 ,1/3,
             1/2,0,0,1/2,
             1,0,0,0,
             0, 1/2 , 1/2, 0),nrow = 4)
r = matrix(c(1/4,1/4,1/4,1/4))
beta = 0.8

es = matrix(c(1,1,1,1),nrow=4)
s = 4
pre_r = r
r = (beta*M)%*%r + (1-beta)/s * es
while(pre_r != r ){
  pre_r = r
  r = (beta*M)%*%r + (1-beta)/s * es
}
r

(r-t)/r



알랴븅 뾰요

#연습문제 5.5.1
n = 4
sqrt(n)
a = c(1/2,1/2,1/2,1/2)
h = c(1/2,1/2,1/2,1/2)
A = matrix(c(0,1,1,1,
             1,0,0,1,
             1,0,0,0,
             0,1,1,0), nrow = 4)

h = A%*%a
h = h/max(h)
a = t(A)%*%h
a = a/max(a)

pre_h =0
pre_a =0
while(pre_h != h || pre_a != a){
  pre_h = h
  h = A%*%a
  h = h/max(h)
  pre_a = a
  a = t(A)%*%h
  a = a/max(a)
}
a
h
#연습문제 5.5.2


#
