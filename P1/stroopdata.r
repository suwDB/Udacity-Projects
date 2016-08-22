setwd("~/MOOC new!/Udacity/DataAnalyst Nanodegree/P1")

# read the input file..
dat <- read.csv("stroopdata.csv")

# Descriptive Statistcs
View(dat)
dim(dat)

summary(dat)

sd_cg = sd(dat$Congruent)
print(sd_cg)

sd_incg = sd(dat$Incongruent)
print(sd_incg)

# Plot the data
hist(dat$Congruent, breaks = 10,main = "Distribution of Congruent sample",xlab = "Response time of congruent sample")

hist(dat$Incongruent, breaks = 12,main = "Distribution of Incongruent sample",xlab = "Response time of incongruent sample")

# t-test:
d = dat$Congruent - dat$Incongruent
t.test(d,alternative = "less", mu = 0)
