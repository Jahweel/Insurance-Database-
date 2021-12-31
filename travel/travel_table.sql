----Travel table---- 
CREATE TABLE travel 
(travel_id INTEGER PRIMARY KEY
 ,t_state VARCHAR (2) NOT NULL
 ,country VARCHAR (2) NOT NULL 
 ,destination VARCHAR(50) NOT NULL 
 ,arrival_date DATE NOT NULL
 ,departure_date DATE NOT NULL
 ,book_date DATE 
 ,trip_cost INTEGER NOT NULL CHECK(trip_cost>0)
);
