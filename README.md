# Pewlett-Hackard-Analysis

Tyrone Fraley
UC Berkley Extension
August 31, 2022


<p align="center">
  <img width="460" height="300" src="silver_tsunami.jpeg">
</p>

## Overview of the analysis: Explain the purpose of this analysis.

Working at Pewlett Hackard in this project I was tasked to assist Bobby (HR analyst) in researching employees. Our purpose was to figure out who will be retiring in the coming years and how many positions will need to be backfilled. In addition to figuring out how many positions will need to be backfilled and who will be retiring in the coming years. Bobby and I were tasked to list all employees who would be eligible to participate in a mentorship program. Which could compliment Pewlett Hackard's future needs to backfill with possibly well vetted internal candidates. The final task in this process would be fore Bobby and I to prepare Bobby's manager for the "silver tsunami" which correlates itself within the employees who are reaching retirement age. We first gathered company data through six csv files which we organized through the use of ERD to determine primary and foreign keys in the data sets. We then used ERD as a graphical reference throughout the study. Finally, all of the csv files were uploaded into pgAdmin 4, organized, and analyzed by using SQL.

### Results: 

When conducting our analysis we initially started by gathering the number of retiring employees. Using SQL queries we amalgamated the data into a Retirement Titles Table ("retiring_emp_title"). The employees on this list were born between Jan 1, 2951 and Dec 31, 1955. the *DESTINCT ON* function turned out to be usefull during this analysis, because it allowed us to create a table that inclcuded the employees' current title. Further in our script we included the count (*COUNT()*) when creating a table that would hold an amount of retirement-age employees listed by their job title. 
