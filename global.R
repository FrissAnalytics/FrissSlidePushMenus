library(shiny)
library(leaflet)

# leaflet helper
r_colors <- rgb(t(col2rgb(colors()) / 255))
names(r_colors) <- colors()

# helper 1
FrissLeftMenu <- function(Title = "Menu",...){
  tags$nav(class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left", id="cbp-spmenu-s1",
           h3(Title),
           div(style = "padding:10px",...)
  )
}

# helper 2
FrissRightMenu <- function(Title = "Menu",...){
  tags$nav(class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-right", id="cbp-spmenu-s2",
           h3(Title),
           div(style = "padding:10px",...)
  )
}

# helper 3
FrissTopMenu <- function(Title = "Menu",...){
  tags$nav(class="cbp-spmenu cbp-spmenu-horizontal cbp-spmenu-top", id="cbp-spmenu-s3",
           h3(Title),
           div(style = "padding:0px",...)
  )
}

# helper 4
FrissBottomMenu <- function(Title = "Menu",...){
  tags$nav(class="cbp-spmenu cbp-spmenu-horizontal cbp-spmenu-bottom", id="cbp-spmenu-s4",
           h3(Title),
           div(style = "padding:0px",...)
  )
}