ST402<-c(52,90,71,23,44,66)
ST419<-c(69,78,82,51,57,63)
ST422<-c(71,68,84,52,55,61)
mkst<-data.frame(ST402,ST419,ST422)
fix(mkst)

row.names(mkst)
row.names(mkst) <- c("Ali", "Bet", "Cal", "Dan", "Eli", "Foo")
mkst$ST402<-mkst$ST402+5
fix(mkst)

mkst$ST419<-mkst$ST419*1.05
fix(mkst)

mkst$EN402<-c("A", "C", "D", "B", "C", "F")
fix(mkst)