CREATE TABLE event_insurance 
(event_insurance_id INTEGER PRIMARY KEY 
 ,e_insurance_type VARCHAR 
 ,e_coverage INTEGER NOT NULL CHECK(e_coverage>0)
 ,e_deductibles INTEGER NOT NULL
); 

--changing primary key to be shorter and consitent with other column names 
ALTER TABLE event_insurance
RENAME event_insurance_id TO e_insurance_id;
