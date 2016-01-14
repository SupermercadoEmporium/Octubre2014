#Segundo Semestre
#install.packages("shiny")
library(shiny)

shinyServer(function(input, output) {
  
output$Octubre<-renderPrint({
  y<-input$select
  paste(y,round(a_matrix_Octubre[y,y], digits=4))
  
})

output$Octubre2<-renderPrint({
  y<-input$select2
  paste(y,round(a_matrix_Octubre[y,y], digits=4))
  
})

output$confidenceOctubre<-renderPrint({
  x<-input$select
  y<-input$select2
  paste("Confidence",round(a_matrix_Octubre[x,y]/a_matrix_Octubre[x,x], digits=4))
})

output$liftOctubre<-renderPrint({
  x<-input$select
  y<-input$select2
  paste("Lift",round(round(a_matrix_Octubre[x,y], digits=4)/(round(a_matrix_Octubre[x,x], digits=4)*round(a_matrix_Octubre[y,y], digits=4)),digits=4))
})

output$tablanamecat1Octubre<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Octubre,
                               Octubre.Categoriaf3==input$select,
                               select=c(Octubre.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:5]/length(sub)
  nam<-vector(mode="character")
  for(i in 1:5){
    nam[i]<-names(t[i])
  }
  paste( names(t[1]))
})

output$tablaprobcat1Octubre<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Octubre,
                               Octubre.Categoriaf3==input$select,
                               select=c(Octubre.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:3]/length(sub)
  paste(round(t[1],digits=4))
})

output$tablanamecat2Octubre<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Octubre,
                               Octubre.Categoriaf3==input$select,
                               select=c(Octubre.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:3]/length(sub)
  nam<-vector(mode="character")
  for(i in 1:3){
    nam[i]<-names(t[i])
  }
  paste( names(t[2]))
})

output$tablaprobcat2Octubre<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Octubre,
                               Octubre.Categoriaf3==input$select,
                               select=c(Octubre.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:3]/length(sub)
  
  paste(round(t[2],digits=4))
})

output$tablanamecat3Octubre<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Octubre,
                               Octubre.Categoriaf3==input$select,
                               select=c(Octubre.CATEGORIA1)))    
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:3]/length(sub)
  nam<-vector(mode="character")
  for(i in 1:3){
    nam[i]<-names(t[i])
  }
  paste( names(t[3]))
})

output$tablaprobcat3Octubre<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Octubre,
                               Octubre.Categoriaf3==input$select,
                               select=c(Octubre.CATEGORIA1)))    
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:3]/length(sub)
  paste( round(t[3], digits=4))
})

output$tablanamecat4Octubre<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Octubre,
                               Octubre.Categoriaf3==input$select,
                               select=c(Octubre.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:4]/length(sub)
  nam<-vector(mode="character")
  for(i in 1:4){
    nam[i]<-names(t[i])
  }
  paste( names(t[4]))
})

output$tablaprobcat4Octubre<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Octubre,
                               Octubre.Categoriaf3==input$select,
                               select=c(Octubre.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:4]/length(sub)
  
  paste(round(t[4],digits=4))
})

output$tablanamecat5Octubre<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Octubre,
                               Octubre.Categoriaf3==input$select,
                               select=c(Octubre.CATEGORIA1)))    
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:5]/length(sub)
  nam<-vector(mode="character")
  for(i in 1:5){
    nam[i]<-names(t[i])
  }
  paste( names(t[5]))
})

output$tablaprobcat5Octubre<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Octubre,
                               Octubre.Categoriaf3==input$select,
                               select=c(Octubre.CATEGORIA1)))    
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:5]/length(sub)
  paste( round(t[5], digits=4))
})

output$tabla1namecat1Octubre<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Octubre,
                               Octubre.Categoriaf3==input$select2,
                               select=c(Octubre.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:3]/length(sub)
  nam<-vector(mode="character")
  for(i in 1:3){
    nam[i]<-names(t[i])
  }
  paste( names(t[1]))
})

output$tabla1probcat1Octubre<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Octubre,
                               Octubre.Categoriaf3==input$select2,
                               select=c(Octubre.CATEGORIA1)))   
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:3]/length(sub)
  
  paste( round(t[1], digits=4))
})

output$tabla1namecat2Octubre<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Octubre,
                               Octubre.Categoriaf3==input$select2,
                               select=c(Octubre.CATEGORIA1)))    
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:3]/length(sub)
  nam<-vector(mode="character")
  for(i in 1:3){
    nam[i]<-names(t[i])
  }
  paste( names(t[2]))
})

output$tabla1probcat2Octubre<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Octubre,
                               Octubre.Categoriaf3==input$select2,
                               select=c(Octubre.CATEGORIA1)))  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:3]/length(sub)
  
  paste( round(t[2], digits=4))
})

output$tabla1namecat3Octubre<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Octubre,
                               Octubre.Categoriaf3==input$select2,
                               select=c(Octubre.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:3]/length(sub)
  nam<-vector(mode="character")
  for(i in 1:3){
    nam[i]<-names(t[i])
  }
  paste( names(t[3]))
})

output$tabla1probcat3Octubre<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Octubre,
                               Octubre.Categoriaf3==input$select2,
                               select=c(Octubre.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:3]/length(sub)
  
  paste( round(t[3], digits=4))
})

output$tabla1namecat4Octubre<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Octubre,
                               Octubre.Categoriaf3==input$select2,
                               select=c(Octubre.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:4]/length(sub)
  nam<-vector(mode="character")
  for(i in 1:4){
    nam[i]<-names(t[i])
  }
  paste( names(t[4]))
})

output$tabla1probcat4Octubre<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Octubre,
                               Octubre.Categoriaf3==input$select2,
                               select=c(Octubre.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:4]/length(sub)
  
  paste(round(t[4],digits=4))
})

output$tabla1namecat5Octubre<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Octubre,
                               Octubre.Categoriaf3==input$select2,
                               select=c(Octubre.CATEGORIA1)))    
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:5]/length(sub)
  nam<-vector(mode="character")
  for(i in 1:5){
    nam[i]<-names(t[i])
  }
  paste( names(t[5]))
})

output$tabla1probcat5Octubre<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Octubre,
                               Octubre.Categoriaf3==input$select2,
                               select=c(Octubre.CATEGORIA1)))    
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:5]/length(sub)
  paste( round(t[5], digits=4))
})



})

#Octubre
catg_Octubre<-data.frame( Octubre$CATEGORIA1, 
                          Octubre$Categoriaf3,
                          Octubre$SLSEQ, Octubre$TICKET)

catg_sin_rep_Octubre<-unique(catg_Octubre)
