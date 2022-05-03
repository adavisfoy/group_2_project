# Group 2 Final Project

## Segment 1 

### Presentation
   - **Selected topic:**
       Tornados
   - **Reason why we selected our topic:**  
     - Tornados are fascinating and devasting at the same time. All members of our group are interested in this topic, especially given that we are currently experiencing spring severe weather season. 
     - Group members mostly reside in Tennesse, with one member currently living in the Midwest (who recently relocated from Memphis, TN).
     - As we began to research this topic, an **EF-3** tornado struck Andover, KS, the evening of April 29, 2022. Wind speeds reached at least 136 miles per hour with experts estimating damage to several hundred homes and businesses, including Andover's local YMCA, which sustained a direct hit. Despite the high level of destruction, only minor injuries were reported.      
     [https://weather.com/storms/severe/news/2022-04-29-tornado-andover-kansas-nebraska-oklahoma](https://weather.com/storms/severe/news/2022-04-29-tornado-andover-kansas-nebraska-oklahoma)
     [https://www.weather.gov/oun/efscale](https://www.weather.gov/oun/efscale)
     - We intend to further evaluate our data and see where it takes us.
     
   - **Description of the data sources:**   
     - Our group utilized the SPC National Severe Weather Database Browser to download severe weather data including tornadoes (since 1950), as well as hail and damaging winds data (since 1955). 
       - [https://www.spc.noaa.gov/climo/online/sp3/plot.php](https://www.spc.noaa.gov/climo/online/sp3/plot.php)
       - The data is derived from the National Weather Service's Storm Data publication, which is reviewed and processed by the National Climatic Data Center and the Storm Prediction Center
      
   - **Questions we hope to answer with the data:** 
     - Which magnitude tornado causes the most damage?

     - Which tornado magnitude is the most common?

     - Which state has the most tornados?

     - In which month do the most tornados occur? 

     - Evaluation of tornado width versus tornado magnitude.
     
     - Evaluation of how 'Tornado Alley' may be changing over time.

### GitHub
  - The Main Branch of our 'group_2_project' repository includes a ReadMe file 
  - Description of the communication protocols for this project: 
    - We downloaded our data via csv files; therefore, we will not need to handle any data transporting needs at this time. We do not need to utilize an API. 
    - Our communication protocols may change as we progress. 
  - At least one branch for each team member w/ at least four commits from the duration of the first segment

### Machine Learning Model
**General ML Info:**
  - The selected ML model will take in data in from the provisional database (additional details below). 
  - The ML model outputs label(s) for the input data.

**TBD**
   - We intend to TBD ML model to accomplish the following: 
     - Find relationships between tornado EF scale ranking to number of injuries, fatalities, loss metrics
     - Determine if the model can predict the tornado's EF score based on these metrics? or vice versa?
     - Focus on metrics such as tornado location, width & length to predict loss
   - A Multiple Linear Regression Supervised Learning model is appropriate due to the following: 
     - Supervised learning algorithms make predictions based on a set of examples, or historical data. In this case, we are utilizing historical severe weather data.
     - Our data set is labeled (includes responses) and much of the data is numeric. 
     - A Multiple Linear regression model lends itself well to modeling relationships between a continuous, dependent variable 'y,' and two or more predictors 'X.'
   - Once we become more familiar with the data, we may determine that more sophisticated ML algorithms are needed to strengthen our understanding of the data and/or improve our results. 

### Database:
  - We intend to set up a provisional database in either PGAdmin or Amazon AWS RDS. 
  - 4.29.22 - added surrogate key column ('surr_key') to each csv so we have a unique primary key for each table that we load into database.
  - [Wikipedia - Surrogate Key](https://en.wikipedia.org/wiki/Surrogate_key) 
  - Sample data that mimics the expected final database structure or schema
  - Draft machine learning module is connected to the provisional database
