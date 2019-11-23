probabilistic <- read.csv(file="probabilistic/susu.csv", header=TRUE, sep=",")
quaglia <- read.csv(file="quaglia/susu.csv", header=TRUE, sep=",")
periodic <- read.csv(file="nom-coordinate/susu.csv", header=TRUE, sep=",")

cktprob <- mean(probabilistic$tempoRollbacks, na.rm=TRUE)
cktqua <- mean(quaglia$tempoRollbacks, na.rm=TRUE)
cktperiodic <- mean(periodic$tempoRollbacks, na.rm=TRUE)

jpeg(filename="/home/ricardo/mygraph.jpeg")

barplot(c(cktperiodic, cktprob, cktqua), xpd = F, beside=T, ylab="Virtual Time", ylim=c(10000, 35000), font.lab=2, names.arg=c("Static","Heuristic","Quaglia"), space=1, cex.names=1.5, cex.lab=1.5, cex.axis=1.5)

dev.off()
