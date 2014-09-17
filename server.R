shinyServer(
	function(input,output) 
	{  x <- reactive({((input$date1-input$date2)+(input$date2-input$date3))/2})
     output$oid1   <- renderText( { x() })
     output$odate1 <- renderPrint( { input$date1 + ( x()-14) } )
	   output$odate2 <- renderPrint( { input$date1 + ( x()-10) } )
     output$odate3 <- renderPrint( { x() + input$date1})
	}
)
		