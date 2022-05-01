# Group 2 Final Project

## Week 1 

### Presentation
   - **Selected topic.**
       Tornados
   - **Reason why we selected our topic.**  
     - Tornados are fascinating and devasting at the same time. All members of our group are interested in this topic, especially given that we are currently experiencing spring severe weather. 
     - Group members mostly reside in Tennesse, with one member currently living in the Midwest who recently relocated from Memphis, TN.
     - As we began to research this topic, an **EF-3** tornado struck Andover, KS, the evening of April 29, 2022. Wind speeds reached at least 136 miles per hour with experts estimating damage to several hundred homes and businesses, including Andover's local YMCA that sustained a direct hit.     
     [https://weather.com/storms/severe/news/2022-04-29-tornado-andover-kansas-nebraska-oklahoma](https://weather.com/storms/severe/news/2022-04-29-tornado-andover-kansas-nebraska-oklahoma)
     - We intend to further evaluate our data and see where it takes us.
     
   - Description of our data sources:   
      We have downloaded data file from 
      
   - Questions we hope to answer with the data: 
     - Which magnitude tornado causes the most damage?

     - Which tornado magnitude is the most common?

     - Which state has the most tornados?

     - In which month do the most tornados occur? 

     - Evaluation of tornado width versus tornado magnitude.

### Github
  - Main Branch with a ReadMe file 
  - Description of the communication protocols
  - At least one branch for each team member w/ at least four commits from the duration of the first segment

### Machine Learning Model
Multiple Linear Regression
   - Find relationships between tornado EF scale ranking to number of injuries, fatalities, loss metrics
   - Can the model predict the ef scale based on these metrics? or vise versa?
   
  - Takes in data in from the provisional database
  - Outputs label(s) for input data

### Database notes
  - 4.29.22 - added surrogate key column ('surr_key') to each csv so we have a unique primary key for each table that we load into database.
  - [Wikipedia - Surrogate Key](https://en.wikipedia.org/wiki/Surrogate_key) 
  - Sample data that mimics the expected final database structure or schema
  - Draft machine learning module is connected to the provisional database
