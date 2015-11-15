shinyUI(
  fluidPage(

    # css
    includeCSS("www/css/default.css"),
    includeCSS("www/css/component.css"),
    includeCSS("www/app.css"),

    # js
    includeScript("www/js/modernizr.custom.js"),

    # attach class to page body
    tags$script(
      "$('body').attr('class','cbp-spmenu-push');"
    ),

    # left menu
    FrissLeftMenu( Title = "menu1",
       hr(),
       div("normal text"),
       hr(),
       actionButton("test1","test1"),
       hr(),
       sliderInput("slider1a","slider1a",min = 0, max =10,value = 5,step = 1),
       sliderInput("slider1b","slider1b",min = 0, max =10,value = 5,step = 1),
       sliderInput("slider1c","slider1c",min = 0, max =10,value = 5,step = 1)
    ),

    # right menu
    FrissRightMenu( Title = "menu2",
       hr(),
       actionButton("test2","test2"),
       hr(),
       sliderInput("slider2a","slider2a",min = 0, max =10,value = 5,step = 1),
       sliderInput("slider2b","slider2b",min = 0, max =10,value = 5,step = 1),
       sliderInput("slider2c","slider2c",min = 0, max =10,value = 5,step = 1),
       hr(),
       actionButton("recalc", "New points")
    ),

    # top menu
    FrissTopMenu( Title = "menu3",
                  tags$a(href = "www.Friss.eu","Friss1"),
                  tags$a(href = "www.Friss.eu","Friss2"),
                  tags$a(href = "www.Friss.eu","Friss3"),
                  tags$a(href = "www.Friss.eu","Friss4"),
                  tags$a(href = "www.Friss.eu","Friss5"),
                  tags$a(href = "www.Friss.eu","Friss6"),
                  tags$a(href = "www.Friss.eu","Friss7"),
                  tags$a(href = "www.Friss.eu","Friss8")
    ),

    # bottom menu
    FrissBottomMenu( Title = "menu4",
                  tags$a(href = "www.Friss.eu","Friss1"),
                  tags$a(href = "www.Friss.eu","Friss2"),
                  tags$a(href = "www.Friss.eu","Friss3"),
                  tags$a(href = "www.Friss.eu","Friss4"),
                  tags$a(href = "www.Friss.eu","Friss5"),
                  tags$a(href = "www.Friss.eu","Friss6"),
                  tags$a(href = "www.Friss.eu","Friss7"),
                  tags$a(href = "www.Friss.eu","Friss8")
    ),

    absolutePanel( id = "controls", top = "200px", right = "40%", draggable = TRUE, width = "300px",

      wellPanel(
        tags$button(id="showLeft",      "Show/Hide Left Slide Menu"),
        tags$button(id="showRight",     "Show/Hide Right Slide Menu"),
        tags$button(id="showTop",       "Show/Hide Top Slide Menu"),
        tags$button(id="showBottom",    "Show/Hide Bottom Slide Menu"),
        hr(),
        tags$button(id="showLeftPush",  "Show/Hide Left Push Menu"),
        tags$button(id="showRightPush", "Show/Hide Right Push Menu"),
        br(), br(),
        leafletOutput("mymap")
      )
    ),

    br(),

    h1(style = "text-align:center", "Friss menu test"),
    # js
    includeScript("www/js/classie.js"),
    includeScript("www/menu.js")

  )
)
