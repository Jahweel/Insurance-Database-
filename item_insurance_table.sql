CREATE TABLE item_insurance 
(item_insurance_id INTEGER PRIMARY KEY 
 ,i_type VARCHAR(50)
 ,i_coverage INTEGER CHECK(i_coverage>0)
 ,i_deductibles INTEGER NOT NULL 
); 