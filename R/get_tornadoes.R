library(rvest)
data <- read_html("http://www.tornadohistoryproject.com/")
year <- data %>%
  html_nodes(".basic_year select") %>%
  html_text() 
state <- data %>%
  html_nodes(".basic_state select") %>%
  html_text()