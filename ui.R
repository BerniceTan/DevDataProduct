shinyUI(navbarPage("Woman's Pregnancy Guide",
    tabPanel("Ovulation Calculator",
      sidebarLayout(
        sidebarPanel(
          dateInput("date1","First day of last menstrual period:"),
          dateInput("date2","First day of previous menstrual period:"),
          dateInput("date3","First day of preceeding menstrual period:"),
          submitButton('Submit')
    ),
    
    mainPanel(
      
      h3('Results of prediction'),
      h4('Your cycles are about ( days ):'),
      verbatimTextOutput("oid1"),
      h4('Your most fertile day for the next cycle starts from:'),
      verbatimTextOutput("odate1"),
      h4('Your most fertile day for the next cycle ends around:'),
      verbatimTextOutput("odate2"),
      h4('Your next expected period is:'),
      verbatimTextOutput("odate3")
    ))),
    tabPanel("About",
             h5("Description"),
             "Ovulation calculator is a tool to help you to predict your most 
              fertile days of the month and when your next menstrual cycle 
              would be.",             
              br(),
              "To increase the chances of getting pregnant, the best time to 
              try to conveice is during your fertile period.",
              br(),
             
              h5("How to use"),
              "This calculator is simple and easy to be used.",
              br(),
              "You just need follow 4 simple steps :- ",
              br(),
              "i) Select the first day of your last menstrual period.",
               br(),
              "ii) Select the first day of your previous menstrual period.",
               br(),
              "iii) Select the first day of your preceeding menstrual period.",
               br(),
              "iv) Hit the Submit button.",
               br(),
               h6("Here you go, Good Luck Trying !"),           
              br(),
              h5("Caution:"),
              "This tool is just an aid and guide to predict fertility period. 
              It provides approximate dates only. 
              In case of any arising issues, kindly consult your gynea."
)))

