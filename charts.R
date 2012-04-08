data <- read.csv('data.csv')
attach(data)
Time = Date
class(Time) = c('POSIXt', 'POSIXct')

plot(Time, Systolic, type="l", col="#F0F0F0")
points(Time, Systolic, type="p", pch=16, col=c(rep("green",120), rep("yellow",20), rep("red",80))[Systolic])
fit <- lm(Systolic~Date)
abline(fit)
lines(smooth.spline(Date, Systolic, df=4))

plot(Time, Diastolic, type="l", col="#F0F0F0")
points(Time, Diastolic, type="p", pch=16, col=c(rep("green",80), rep("yellow",10), rep("red",80))[Diastolic])
fit <- lm(Diastolic~Date)
abline(fit)
lines(smooth.spline(Date, Diastolic, df=4))

plot(Time, Pulse, type="l", col="#F0F0F0")
points(Time, Pulse, type="p", pch=16)
fit <- lm(Pulse~Date)
abline(fit)
lines(smooth.spline(Date, Pulse, df=4))

plot(Time, Mean.Arterial.Pressure, type="l", col="#F0F0F0")
points(Time, Mean.Arterial.Pressure, type="p", pch=16)
fit <- lm(Mean.Arterial.Pressure~Date)
abline(fit)
lines(smooth.spline(Date, Mean.Arterial.Pressure, df=4))

plot(Time, Pulse.Pressure, type="l", col="#F0F0F0")
points(Time, Pulse.Pressure, type="p", pch=16)
fit <- lm(Pulse.Pressure~Date)
abline(fit)
lines(smooth.spline(Date, Pulse.Pressure, df=4))