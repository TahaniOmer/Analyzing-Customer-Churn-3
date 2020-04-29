# Analyzing-Customer-Churn-3

#### Restricted Mean Survival Time


### 	Quantify the monetary impact of changes in customer churn.

## Abstract

Restricted Mean Survival Time (RMST from here on out) is simply the average number of time periods a customer survives before churning. except that the highest values are “restricted” to some maximum. So, we might take an average survival time in days for a group of customers, but we restrict the highest values to 365 before we take the average. That’s the 365-day RMST for that group. In this paper we want to calculate RMST on right-censored data, we will simply calculate the area under the estimated survival curve during the time period we’re interested in analyzing.

 what does it tell us, exactly? It tells us the average number of days of revenue we’ll get out of a group of customers during their first year. If the RMST comes out to, say, 335, we know that we’ll get 335 days (or 11 months) of revenue out of the average customer. If our monthly fee is $5 / month, that’s $55 of revenue per customer in their first year. Framed differently, we can say that churn is costing us $5 per customer out of a possible $60 in first-year revenue.

## Introduction

NetLixx, a fictional online guitar-tab subscription service. It has a long-standing technical glitch that forces users to re-install the app. Users that experience the glitch are leaving in droves, and the company has started offering $5 service credits to those that hit the bug in an effort to keep their business. But is it working? Is the service credit program worth the money?



## Approach

We will used Restricted Mean Survival Time, and some dummy data. The data has a traditional yes/no churn indicator, a survival time variable (churn date minus glitch date for those that churned, today’s date minus glitch date for those that didn’t), and a yes/no indicator showing whether or not the user was offered a $5 bill credit.



## Method
To calculate the RMST for each group, we used R-studio and the Survival package, we’ll do a 180-day RMST to see if we make our money back in the first six months. We fit a survival curve for each group, then we get the 180-days RMST for each group, the result, and the plot as fellow: 

 




 

As you can see, the RMST for the group that got the free credits is 163 days, 40 days greater than the group that didn’t. If we divide 40 by 30 to put it in terms of months, then multiply by $5 of revenue, we know that we can expect to get $6.67 in extra revenue out of a customer that got a credit vs. one that didn’t in the sixth months after their glitch. This implies that a $5 credit is likely well worth the cost.
 
 
## Conclusion

RMST can be a great tool for understanding customer churn. It lets us quantify the financial impact of churn and make smart business decisions about whether you should spend money to reduce your churn rate. Of course, as with anything, it’s not perfect.

RMST can only give us the revenue differences for a certain period of time. In the case of our example above, we only know about changes in revenue over a 6-month period – but the differences in revenue would probably be even greater in, say, months 7 to 12. We’ve got useful information, but we can’t use RMST to project out past the end of our data. Ultimately, as with anything, RMST is not a perfect tool. but it’s still good to have in the toolbox.



