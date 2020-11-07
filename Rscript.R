#!/bin/bash
# nesting for loops in R
A <- c("a1", "b2", "c3")
B <- c("one", "two")

for(a in 1:length(A)){
  for(b in 1:length(B)){
   output <- paste("outputR", ",", A[a], ",", B[b], sep=",")
   output <- gsub('"','', output)
   write.table(output, 'output.csv', sep=",", row.names=F, append=T)
  }
}
