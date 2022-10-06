EE = c(125, 127, 126, 126, 105, 128, 127, 126, 79, 124)
CE = c(131, 129, 77, 52, 134, 133, 94, 68, 67, 132)
n = 10
EE = gp_1
CE = gp_2
STUDENT_IQ = c(EE, CE)
STUDENT_MAJOR = rep(c("EE", "CE"), each = n)

data <- data.frame(STUDENT_MAJOR, STUDENT_IQ, stringsAsFactors = TRUE)

res <- wilcox.test(STUDENT_IQ~ STUDENT_MAJOR,
                   data = data,
                   paired=FALSE, exact=FALSE, conf.int=TRUE)


tot = c(EE, CE)
ranks = rank(tot)
T_EE = sum(ranks[1:n])
T_CE = sum(ranks[(n+1):(2*n)])
U_EE = n*n + n*(n+1)/2 - T_EE
U_CE = n*n + n*(n+1)/2 - T_CE
U = min(U_EE, U_CE)
sigma_U = sqrt(n*n *(2*n+1)/12)
mean_U = n*n/2
Z = (U- mean_U)/sigma_U
Z

