library(shiny)


shinyServer(function(input, output){
    
    output$fun <- renderText({
        paste0(input$obs1,'x^2+',input$obs2,'x+',input$obs3)
    })
    output$root <- renderText({
        if(input$obs1==0){
            if(input$obs2==0){
                print('请输入正确的方程系数')}else{
                    print(paste0('x=',-input$obs3/input$obs2))
                }
        }else{
            delta2<-input$obs2*input$obs2-4*input$obs1*input$obs3
            if(delta2>0){
                x1<-round(((-input$obs2+sqrt(delta2))/2/input$obs1)*100)/100
                    x2<-round(((-input$obs2-sqrt(delta2))/2/input$obs1)*100)/100
                    print(paste0('x1=',x1,'    ;x2=',x2))
            }else{
                x1<-round(((-input$obs2+sqrt(delta2+0*1i))/2/input$obs1)*100)/100
                x2<-round(((-input$obs2-sqrt(delta2+0*1i))/2/input$obs1)*100)/100
                print(paste0('x1=',x1,'    ;x2=',x2))
            }
        }
    })
    output$plot1 <- renderPlot({
        if(input$obs1==0){
            # curve(input$obs2*x+input$obs3, from = -input$obs3/input$obs2-2, to = -input$obs3/input$obs2+2, xlab = '', ylab = '', ylim = c(-10,10))
            curve(input$obs2*x+input$obs3, from = -input$obs3/input$obs2-2, to = -input$obs3/input$obs2+2, xlab = '', ylab = '')
            abline(h=0)
        }else{
            # curve(input$obs1*x^2 + input$obs2*x+input$obs3, from = -input$obs2/2/input$obs1-3, to = -input$obs2/2/input$obs1+3, xlab = '', ylab = '', ylim = c(-10,10))
            curve(input$obs1*x^2 + input$obs2*x+input$obs3, from = -input$obs2/2/input$obs1-3, to = -input$obs2/2/input$obs1+3, xlab = '', ylab = '')
             abline(h=0)
        }
        
    })           
    
})

