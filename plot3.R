if(!exists("get_tidy_data", mode = "function")) source("get_tidy_data.R")

D <- get_filtered_data()

draw_plot3 <- function() {
    plot(D$DateTime, D$SubMetering1, ylab = "Energy sub metering", xlab = "", type = "l")
    
    lines(D$DateTime, D$SubMetering2, type = "l", col = "red")
    lines(D$DateTime, D$SubMetering3, type = "l", col = "blue")
    
    legend("topright", c("SubMetering1", "SubMetering2", "SubMetering3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))    
}

png("plot3.png", width = 480, height = 480)

draw_plot3()

dev.off()