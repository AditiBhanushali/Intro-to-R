demodata_new <- read.csv (file.choose())
attach(demodata_new)
demodata_new

t.test (trust~sex)
t.test (sf~sex)
t.test (alt~sex)
t.test (comply~sex)
t.test (modest~sex)
t.test (tm~sex)
t.test (tm~modest)

### correlations
cor (math, sci)
cor.test (math, sci)
? cor.test

cor.test (trust,sf)
cor.test(trust,alt)
cor.test (trust,comply)
cor.test (trust,modest)
cor.test (trust,tm) 

cor.test (sf,alt)
cor.test (sf,comply)
cor.test (sf,modest)
cor.test (sf,tm)


cor.test (alt,comply)
cor.test (alt,modest)
cor.test (alt,tm)


cor.test (comply,modest)
cor.test (comply,tm)

cor.test (modest,tm)

