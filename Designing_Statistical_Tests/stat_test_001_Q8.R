sup_before = c(60, 56, 80, 73, 14, 32)
sup_after = c(58, 58, 83, 67, 17, 36)
n = 6
sup_label = rep(c("before", "after"), each = n)
sup =  c(sup_before, sup_after)
df = data.frame(sup_label, sup)
df
wilcox.test(sup~ sup_label,
            data = df,
            paired=TRUE,)


## part C
sup_before = c(78,50,40,40,20,50,50,50,50)
sup_after = c(65,20,50,8,16,44,38,40,45)
n = length(sup_after)
sup_label = rep(c("before", "after"), each = n)
sup =  c(sup_before, sup_after)
df = data.frame(sup_label, sup)
df
wilcox.test(sup~ sup_label,
            data = df,
            paired=TRUE)
