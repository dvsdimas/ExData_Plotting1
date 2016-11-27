if(!exists("get_tidy_data", mode = "function")) source("get_tidy_data.R")

D <- get_filtered_data()

png("plot2.png", width = 480, height = 480)

plot(D$DateTime, D$GlobalActivePower, ylab = "Global Active Power (kilowatts)", xlab = "", type = "l")

dev.off()