select * from hrdata;
Select avg(last_evaluation) from hrdata;

Select *,
Case when last_evaluation > 0.716 or time_spend_company >= 4 or number_project >= 5 then "High Performer"
Else "Low Performer" end as Performer
from hrdata; 

Create table masterhrdata as
Select *,
Case when last_evaluation > 0.716 or time_spend_company >= 4 or number_project >= 5 then "High Performer"
Else "Low Performer" end as Performer
from hrdata; 

Select * from masterhrdata;

Select work_accident, churn, count(*)
 from masterhrdata
 where Performer = "High Performer"
 group by 1,2;
 
Select time_spend_company, churn, count(*)
 from masterhrdata
 where Performer = "High Performer"
 group by 1,2;


 Select Case when time_spend_company >= 7  then "long duration"
when time_spend_company >= 4 then "medium duration"
Else "Low duration" end as Duration
, churn, count(*)
 from masterhrdata
 where Performer = "High Performer"
 group by 1, 2
;

 
 Select * from masterhrdata;
 
 
 Select Case when last_evaluation >= 0.8 then "Great Evaluation"
 when last_evaluation >= 0.5 then "Poor Evaluation" 
 Else "Fair Evaluation" end as Evaluation
 , churn, count(*),
 from masterhrdata
 group by 1,2,3;