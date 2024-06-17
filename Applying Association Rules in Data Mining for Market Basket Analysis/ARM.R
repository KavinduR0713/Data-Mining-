marketbasket <-read.csv("basket_analysis.csv",header=T, colClasses="factor")  

names(marketbasket) 
head(marketbasket) 
tail(marketbasket) 
summary(marketbasket)  
str(marketbasket)  

yes = colSums(marketbasket == "TRUE")  
yes

no = colSums(marketbasket=="FALSE") 
no

purchased <- rbind(yes,no) 
purchased 

barplot(purchased,legend=rownames(purchased)) #Plot 1 
barplot(purchased, beside=T,legend=rownames(purchased))# Plot 2 

library(arules)

rules <- apriori(marketbasket) 
summary(rules) 
inspect(rules) 

rules <- apriori(marketbasket,  parameter =list(minlen=2,maxlen=3, conf = 0.2)) 
summary(rules) 
inspect(rules) 

rules <- apriori(marketbasket,  parameter =list(minlen=2,maxlen=3, conf = 0.3)) 
summary(rules) 
inspect(rules) 

summary(marketbasket) 

barplot(purchased, beside=T,legend=rownames(purchased)) 

rules <- apriori(marketbasket,   parameter = list(minlen=2, maxlen=3,conf = 0.4), appearance= list(rhs=c("chocolate=TRUE"),default="lhs")) 
summary(rules) 
inspect(rules)

rules <- apriori(marketbasket,   
                 parameter = list(minlen=2, maxlen=3,conf = 0.2), 
                 appearance= list(rhs=c("chocolate=TRUE"),default="lhs")) 
summary(rules) 
inspect(rules)

library(arulesViz)

plot(rules) 

plot(rules, method="grouped")  

plot(rules@quality)

rules3 <-  apriori(marketbasket,  parameter = list(minlen=2,maxlen=4, conf = 0.30), appearance =list(rhs=c("chocolate=TRUE","Onion=TRUE","Butter=TRUE") ,default="lhs") ) 

rules2 <- apriori(marketbasket,
                  parameter = list(minlen=2, maxlen=3,conf = 0.6),
                  appearance =list(rhs=c("chocolate=TRUE"), 
                                   lhs=c("Apple=TRUE",
                                         "Bread=TRUE",
                                         "Butter=TRUE",
                                         "Cheese=TRUE",
                                         "Corn=TRUE",
                                         "Dill=TRUE",
                                         "Eggs=TRUE",
                                         "Ice.cream=TRUE",
                                         "Kidney.Beans=TRUE",
                                         "Milk=TRUE",
                                         "Nutmeg=TRUE",
                                         "Onion=TRUE",
                                         "Sugar=TRUE",
                                         "Unicorn=TRUE",
                                         "Yogurt=TRUE"),
                                   default="none"))

inspect(rules2) 

rules2 <- apriori(marketbasket,
                  parameter = list(minlen=2, maxlen=3,conf = 0.5),
                  appearance =list(rhs=c("chocolate=TRUE"), 
                                   lhs=c("Apple=TRUE",
                                         "Bread=TRUE",
                                         "Butter=TRUE",
                                         "Cheese=TRUE",
                                         "Corn=TRUE",
                                         "Dill=TRUE",
                                         "Eggs=TRUE",
                                         "Ice.cream=TRUE",
                                         "Kidney.Beans=TRUE",
                                         "Milk=TRUE",
                                         "Nutmeg=TRUE",
                                         "Onion=TRUE",
                                         "Sugar=TRUE",
                                         "Unicorn=TRUE",
                                         "Yogurt=TRUE"),
                                   default="none"))
inspect(rules2)

rules2 <- apriori(marketbasket,
                  parameter = list(minlen=2, maxlen=3,conf = 0.3),
                  appearance =list(rhs=c("chocolate=TRUE"), 
                                   lhs=c("Apple=TRUE",
                                         "Bread=TRUE",
                                         "Butter=TRUE",
                                         "Cheese=TRUE",
                                         "Corn=TRUE",
                                         "Dill=TRUE",
                                         "Eggs=TRUE",
                                         "Ice.cream=TRUE",
                                         "Kidney.Beans=TRUE",
                                         "Milk=TRUE",
                                         "Nutmeg=TRUE",
                                         "Onion=TRUE",
                                         "Sugar=TRUE",
                                         "Unicorn=TRUE",
                                         "Yogurt=TRUE"),
                                   default="none"))


inspect(rules2)

rules_ex <-apriori(marketbasket,  parameter =list(minlen=2,maxlen=4,conf=0.2)) 

ruleExplorer(rules_ex) 

ruleExplorer(marketbasket) 



















