library(UsingR)
bloodPressureDiag <- function(systolic, diastolic)
  {
        result <- 'Undefined';
        if ((systolic <= 90) && (diastolic <= 60))
          {
            result <- 'Low';
          }
        if(((systolic > 90)&& (systolic <= 120)) && ((diastolic > 60)&&(diastolic <= 80)))
         {
            result <- 'Ideal';
        }
        if(((systolic > 120)&& (systolic <= 140)) && ((diastolic > 80)&&(diastolic <= 90)))
        {
            result <- 'Pre-high';
        } 
        if(((systolic > 140)&& (systolic <= 190)) && ((diastolic > 90)&&(diastolic <= 100)))
       {
           result <- 'High';
        } 
        result
}

shinyServer(
        function(input, output) {
                output$diagnosis <- renderPrint({bloodPressureDiag(input$systolic,input$diastolic)})
      }
)
