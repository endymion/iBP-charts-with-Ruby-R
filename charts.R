data <- read.csv('data.csv')
attach(data)
Time = Date
class(Time) = c('POSIXt', 'POSIXct')

plot(Time, Systolic)
fit <- lm(Systolic~Date)
abline(fit)
lines(smooth.spline(Date, Systolic, df=4))

plot(Time, Diastolic)
fit <- lm(Diastolic~Date)
abline(fit)
lines(smooth.spline(Date, Diastolic, df=4))

plot(Time, Pulse)
fit <- lm(Pulse~Date)
abline(fit)
lines(smooth.spline(Date, Pulse, df=4))

plot(Time, Mean.Arterial.Pressure)
fit <- lm(Mean.Arterial.Pressure~Date)
abline(fit)
lines(smooth.spline(Date, Mean.Arterial.Pressure, df=4))

plot(Time, Pulse.Pressure)
fit <- lm(Pulse.Pressure~Date)
abline(fit)
lines(smooth.spline(Date, Pulse.Pressure, df=4))