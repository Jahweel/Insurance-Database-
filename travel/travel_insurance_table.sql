CREATE TABLE travel_insurance 
(insurance_id INTEGER PRIMARY KEY 
 ,t_type VARCHAR(25)
 ,t_coverage integer CHECK(t_coverage>0)
 ,deductibles INTEGER NOT NULL
); 
