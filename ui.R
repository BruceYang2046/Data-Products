library(shiny)


shinyUI(
    fluidPage(
        navlistPanel(
            title ="基础数学", widths = c(3, 9),
            # css<-c("Cerulean.css","Cosmo.css","Cyborg.css","Darkly.css","Flatly.css","Journal.css","Lumen.css","Paper.css","Readable.css","Sandstone.css","Simplex.css", "Slate.css", "Spacelab.css","Superhero.css","United.css","Yeti.css"),
            # theme = css[sample(1:16,1)],
            # theme = css[14],
            tabPanel(
                icon=icon('home'),
                h6("一元二次方程"),
                br(),
                sidebarPanel(width = 3,
                             numericInput("obs1", "一元二次方程系数a:", 4),
                             numericInput("obs2", "一元二次方程系数b:", -20),
                             numericInput("obs3", "一元二次方程系数c:", 18)),
                mainPanel(width = 9,
                          h4("待解的方程："),
                          h3(htmlOutput('fun')),
                          br(),
                          br(),
                          h4("答案是："),
                          h3(htmlOutput('root')),
                          br(),
                          br(),
                          h4("图解："),
                          plotOutput('plot1')),
                br()
                
            ),
            tabPanel(
                icon=icon('home'),
                h6("抛物线"),
                br(),
                br(),
                mainPanel(width = 9),
                br(),br(),
                sidebarPanel(width = 3)
            )
        )
    )
)



