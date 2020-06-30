
A = c(3.06,500,6)


B = c(2.68,320,4)


C = c(2.92,640,6)

S_mean = (A+B+C) / 3

x = 1/S_mean[1]

alpha =  1/S_mean[2]

beta = 1/S_mean[3]

w = c(x, alpha, beta)
# 세 대의 컴퓨터에 대한 각 벡터 쌍 사이의 코사인 각을 alpha와 beta에 대하여 계산하여라. 


A %*% B
sum(A*B)

A
B
C

w

A = w*A
B = w*B
C = w*C

cos = function(A,B){
  return( sum(A*B) / ( sqrt(sum(A^2)) * sqrt(sum(B^2)) ) )

}

cos(A,B)
cos(B,C)
cos(C,A)

#Exercise9.2.2
A = c(3.06,500,6)
B = c(2.68,320,4)
C = c(2.92,640,6)
S_mean = (A+B+C) / 3

A=A-S_mean
B=B-S_mean
C=C-S_mean

cos(A,B)
cos(B,C)
cos(C,A)

#Exercise9.2.2 b)
A = c(3.06,500,6)
B = c(2.68,320,4)
C = c(2.92,640,6)
S_mean = (A+B+C) / 3
#분산은 편차 제곱의 평균
S_v = ( (A-S_mean)^2 + (B-S_mean)^2 + (C-S_mean)^2 ) / 3
S_sd = sqrt(S_v) #표준편차
A=(A-S_mean) / S_sd
B=(B-S_mean) / S_sd
C=(C-S_mean) / S_sd
cos(A,B)
cos(B,C)
cos(C,A)

20003/sqrt(400120109)
80009/sqrt(6401484181)s
25603/sqrt(655520009)



#Exerciese9.2.3
rank  = c(4,2,5)
rank  = rank - mean(rank)
rank

A = c(3.06,500,6)
B = c(2.68,320,4)
C = c(2.92,640,6)
(A*4 + B*2 + C*5 ) / 11


A = c(3.06, 5.0, 3.0)
B = c(2.68, 3.2, 2.0)

sum(A*B) / ( sqrt( sum(A^2) ) * sqrt( sum(B^2) ) )

 sqrt( sum(C^2))
  
  
