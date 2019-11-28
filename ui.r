heartdata<-read.csv("heart_lab.csv")
fluidPage(
  headerPanel('Kaggle UCI Heart Data Exploratory Data Analysis'),
  sidebarPanel(
	h4('Select variables X, Y, and the cluster count k'),  
    selectInput('xcol', 'Variable X', names(heartdata)),
    selectInput('ycol', 'Variable Y', names(heartdata),
                selected=names(heartdata)[[2]]),
    numericInput('clusters', 'Cluster count k', 3,
                 min = 1, max = 9),
	  h4('Data source:'),
	  tags$a(href='https://www.kaggle.com/ronitf/heart-disease-uci','https://www.kaggle.com/ronitf/heart-disease-uci'),
	  h4('Subset variables:'),
	  h5('1. age'),
	  h5('2. trestbps (resting blood pressure)'),
	  h5('3. chol (serum cholesterol in mg/dl)'),
	  h5('4. thalach (maximum heart rate)'),
	  h5('5. oldpeak (exercise-inducec ST depression)'),
  
  ),
  mainPanel(
    h2('K-means Clustering'),
    plotOutput('plot1'),
    h4('11/29/2019'),
    h4('By Dr. Robert J Chen (rjchen@post.harvard.edu)'),
    h4('More EDA:'),
    tags$a(href='http://rpubs.com/rjcc/plotly_rjcc2','http://rpubs.com/rjcc/plotly_rjcc2'),
  )
)