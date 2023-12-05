#Library Used
library(arules)
library(readxl)
library(dplyr)

#Import Data
data_ap = read_excel("C:/Users/acer/Downloads/Market_Basket_Optimisation.xlsx")[,2:17]
data_ap

#Preprocessing Data
cols_to_change <- c('Apple','Bread','Butter','Cheese','Corn',
                    'Dill','Eggs','Ice cream','Kidney Beans',
                    'Milk','Nutmeg','Onion','Sugar','Unicorn',
                    'Yogurt','chocolate')  

data_apriori <- data_ap %>% mutate(across(all_of(cols_to_change), ~ifelse(. == 'TRUE', 1, 0)))
data_apriori

#Create transactions object from data
trans <- as(as.matrix(data_ap), "transactions")
trans

#Run the Apriori Algorithm
rules <- apriori(trans, parameter = list(support = 0.2, confidence = 0.5))

#Show the Result of the Rules
inspect(rules)
