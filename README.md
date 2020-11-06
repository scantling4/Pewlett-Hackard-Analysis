# Pewlett-Hackard-Analysis

## Overview of Analysis:

One of the purposes of this analysis was to determine the number of retiring employees per job title at Pewlett Hackard. Another purpose was to identify employees who are eligible to participate in a mentorship program. These were both accomplished through the use of an ERD and SQL. 

## Results: 

- In order to obtain the number of retiring employees per title at Hewlett-Packard, we retrieved specific columns from previously created tables, joined them together and filtered the data based on employees who were born between 1952 and 1955, thus giving us the retiring titles. The data was exported as a csv. 
- However, due to the duplicate entries for some employees who have switched titles over the years, the duplicates were removed and only the most recent title of each employee was kept. 
- The DISTINCT ON statement allowed us to filter through the data to obtain this information.
- Based on their most recent job title, the number of employees who are about to retire were counted. There are 29,414 senior engineer positions that will be open. However, there are only 2 manager positions that will be opening up. 
- By filtering data based on birth dates between January 1, 1965 and December 31, 1965, we were able to obtain the current employees who are eligible for the mentorship program. 
- There are 1,549 employees who are eligible for the mentorship program. 

## Summary: 
### Roles needed to be filled as "Silver Tsunami" begins to make an impact
- Overall, 90,398 roles need to be filled as the “silver tsunami” begins to make an impact. This is broken down by title in the retiring_titles.csv, but a quick sum of the count column shows how many roles need to be filled. Looking at the employees eligible to retire, those who were born in 1952 are most likely to retire first and thus those roles would need to be of high priority to fill. Creating a new table, the first_year_wave.csv shows the number of roles that would need to be filled that hypothetical first year. 
### Are there enough mentors for the next generation of Pewlett-Hackard employees? 
- No, there are not enough retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees. Using the csv created to determine the number of employees that were eligible for the Mentorship Program, shown in the mentorship_titles.csv, that the number of employees that are eligible is not nearly enough to provide adequate mentorship. For example, there are 29,414 Senior Engineers that are retiring, yet only 304 Senior Engineers who are eligible for the Mentorship Program. This is shown in the mentorship_titles.csv. 
