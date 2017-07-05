library(UsingR)
shinyServer(
    function(input, output) {
        output$newHist <- renderPlot({
            in_n <- input$n
            in_mu <- input$mu
            in_sd <- input$sd
            my_dist <- rnorm(in_n, mean = in_mu, sd = in_sd)
            hist(my_dist, xlab = 'Normal Distribution', col = 'lightblue', main = 'Histogram')
            abline(v=in_mu, col="red")
            abline(v=in_mu-in_sd, col="blue")
            abline(v=in_mu+in_sd, col="blue")
            legend("topright", c("mean", "sd"), lwd=2, col=c("red", "blue"))
        })
        output$notes <- renderText({ "This is a simple demonstration of the random normal distribution. Please use the sliders in order to control the generation of a histogram." })
    }
)
