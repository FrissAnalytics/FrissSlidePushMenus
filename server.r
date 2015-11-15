shinyServer(function(input, output, session) {

    observeEvent(input$test1,{
      cat("\naction button 1 clicked")
    })

    observeEvent(input$test2,{
      cat("\naction button 2 clicked")
    })

    # leaflet test
    points <- eventReactive(input$recalc, {
      cbind(rnorm(40) * 2 + 13, rnorm(40) + 48)
    }, ignoreNULL = FALSE)

    output$mymap <- renderLeaflet({
      leaflet() %>%
        addProviderTiles("Stamen.TonerLite",
                         options = providerTileOptions(noWrap = TRUE)
        ) %>%
        addMarkers(data = points())
    })
})