if(!exists("get_tidy_data", mode = "function")) source("get_tidy_data.R")

D <- get_filtered_data()

png("plot1.png", width = 480, height = 480)

hist(D$GlobalActivePower, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

dev.off()