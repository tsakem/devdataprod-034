##load the libraries
library(shiny)
library(ggplot2)
library(RCurl)


theURL <- getURL("http://www.football-data.co.uk/mmz4281/1516/SP1.csv")
thedata <- read.csv(text = theURL)



shinyServer(
        function(input, output) {
                
                
                output$resultsplot <- renderPlot({
                        
                        ##show the results over a time period of 
                        
                        if (input$theplace=="home") {
                                thedataset<- thedata[which(thedata$HomeTeam=="Barcelona"),1:10]
                                thedataset$AwayTeam<-factor(thedataset$AwayTeam)
                                
                                thedataset$theresult<-"Draw"
                                thedataset$theresult[thedataset$FTR=="A"]<-"Barca Lost"
                                thedataset$theresult[thedataset$FTR=="H"]<-"Barca Won"
                                
                                qplot(thedataset$AwayTeam,thedataset$FTHG,geom=c("bar","text"),
                                      stat="identity",
                                      fill=thedataset$theresult,
                                      ylim=c(0,10),
                                      main="Barcelona goals scored and result",
                                      ylab="Goals Scored",
                                      xlab="Team against",
                                      label=thedataset$FTHG) +
                                      scale_fill_manual(values = c("Barca Won"="cyan","Draw"="grey","Barca Lost"="red"))
                                

                        }else{
                                thedataset<- thedata[which(thedata$AwayTeam=="Barcelona"),1:10] 
                                thedataset$HomeTeam<-factor(thedataset$HomeTeam)
                            
                                thedataset$theresult<-"Draw"
                                thedataset$theresult[thedataset$FTR=="A"]<-"Barca Won"
                                thedataset$theresult[thedataset$FTR=="H"]<-"Barca Lost"
                                
                                
                                qplot(thedataset$HomeTeam,thedataset$FTAG,geom=c("bar","text"),stat="identity",fill=thedataset$theresult,ylim=c(0,10),
                                      main="Barcelona goals scored and result",
                                      ylab="Goals Scored",
                                      xlab="Team against",
                                      label=thedataset$FTAG)+
                                        scale_fill_manual(values = c("Barca Won"="cyan","Draw"="grey","Barca Lost"="red"))
                        }
                        

                })
                
        }
)