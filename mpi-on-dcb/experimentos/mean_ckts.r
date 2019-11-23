
probabilistic <- read.csv(file="probabilistic/susu.csv", header=TRUE, sep=",")
quaglia <- read.csv(file="quaglia/susu.csv", header=TRUE, sep=",")
pe <- read.csv(file="pe/susu.csv", header=TRUE, sep=",")
periodic <- read.csv(file="nom-coordinate/susu.csv", header=TRUE, sep=",")

cktprob <- mean(probabilistic$totalCheckpoints, na.rm=TRUE)
cktqua <- mean(quaglia$totalCheckpoints, na.rm=TRUE)
cktpe <- mean(pe$totalCheckpoints, na.rm=TRUE)
cktperiodic <- mean(periodic$totalCheckpoints, na.rm=TRUE)


jpeg(filename="/home/ricardo/checkpoints.jpeg")

barplot(c(cktperiodic, cktprob, cktqua), xpd = F,beside=T, ylab="# of Checkpoints", ylim=c(700, 1000), font.lab=2, names.arg=c("Static","Heuristic","Quaglia"),  space=1, cex.names=1.5, cex.lab=1.5, cex.axis=1.5)


dev.off()
