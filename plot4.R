if(!exists("get_tidy_data", mode = "function")) source("get_tidy_data.R")
if(!exists("draw_plot2", mode = "function")) source("plot2.R")
if(!exists("draw_plot3", mode = "function")) source("plot3.R")

D <- get_filtered_data()

png("plot4.png", width = 480, height = 480)

par("mfrow" = c(2, 2))

draw_plot2()

plot(D$DateTime, D$Voltage, ylab = "Voltage", xlab = "datetime", type = "l")    

draw_plot3()

plot(D$DateTime, D$GlobalReactivePower, ylab = "Global Reactive Power (kilowatts)", xlab = "datetime", type = "l")    

dev.off()