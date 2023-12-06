# Market Basket Analysis

## About
Our goal is to explore and leverage association rules to uncover meaningful patterns and relationships within transactions on Market Basket data. This project showcases the practical application of the Apriori Algorithm using Rstudio. The dataset was obtained from the [Kaggle Market Basket Analysis Data](https://www.kaggle.com/datasets/ahmtcnbs/datasets-for-appiori)

## Purpose Of The Project
By using Association Rule Mining, the main goal of this project is to uncover hidden patterns and associations within transactions to optimize product placements and enhance marketing strategies.

## About Data
The data was obtained from the [Kaggle Market Basket Analysis Data](https://www.kaggle.com/datasets/ahmtcnbs/datasets-for-appiori) The data consists of 999 rows and 17 columns. Values of the data include 'TRUE' and 'FALSE'.

## Methods Used
1. Preprocessing Data: In this step, we will replace 'TRUE' values with '1' and replace 'FALSE' values with '0'
2. Apriori Algorithm: The apriori algorithm is applied to mine frequent item sets and association rules in transactional data.
3. Conclusion

## Code
For the rest of the code check the [Market Basket Apriori.R](https://github.com/kaylaisya/MarketBasketAnalysis/blob/main/MarketBasketApriori.R)
```ruby
#Library Used
library(arules)
library(readxl)
library(dplyr)

#Import Data
```ruby
data_ap = read_excel("C:/Users/acer/Downloads/Market_Basket_Optimisation.xlsx")[,2:17]
data_ap
```

## Conclusion
With the use of a minimum support value of 20% and a minimum confidence value of 50%, three rules containing 2 items were obtained. The itemsets {Milk → chocolate} and {chocolate → Milk} both have support of 0.211. Therefore, it implies that 21.1% of customers who buy milk also purchases chocolate, and vice versa. Therefore, it implies that 21.1% of customers who buy milk also purchase chocolate, and vice versa. This information suggests a strong association between these two products, indicating that promoting chocolate to milk buyers (and vice versa) could increase sales.

Meanwhile, the itemset {Ice cream → Butter} has a support of 0.207. This implies that 20.7% of customers who purchase ice cream also buy butter. By knowing this, retailers can consider placing butter near the ice cream section, as there is a significant likelihood that customers purchasing ice cream may also be interested in buying butter.

This information enables targeted marketing strategies. Retailers can tailor promotions or discounts to consumers buying specific combinations of products. For instance, a discount on chocolate for customers purchasing milk or a bundled offer for ice cream and butter could be implemented to encourage certain purchasing behaviors.

All three rules have a leverage greater than 1, indicating usefulness in these rules. The larger the leverage value, the stronger the relationship between the itemsets in these rules.

In summary, with the knowledge gained from these association rules, businesses can provide actionable insights that can optimize their product offerings, and marketing strategies, ultimately leading to increased sales and improved customer satisfaction.
