
## ------------------------------------------------------------------------
library(datasets)
library(ggplot2)
ggplot(data=ToothGrowth, aes(x=as.factor(dose), y=len, fill=supp)) +
    geom_bar(stat="Identity",) +
    facet_grid(. ~ supp) +
    xlab("Dose shown miligrams") +
    ylab("Tooth growth length") +
    guides(fill=guide_legend(title="Supp Type"))


## ------------------------------------------------------------------------
fit <- lm(len ~ dose + supp, data=ToothGrowth)
summary(fit)


## ------------------------------------------------------------------------
confint(fit)


