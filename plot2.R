if(!exists("get_tidy_data", mode = "function")) source("get_tidy_data.R")

D <- get_filtered_data()

draw_plot2 <- function() {
    plot(D$DateTime, D$GlobalActivePower, ylab = "Global Active Power (kilowatts)", xlab = "", type = "l")    
}


png("plot2.png", width = 480, height = 480)

draw_plot2()

dev.off()