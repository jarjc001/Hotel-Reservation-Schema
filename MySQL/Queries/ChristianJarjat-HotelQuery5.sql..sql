USE hotelreservation;

-- query 5

-- returns all rooms with a capacity of three or more
-- AND that are reserved on any date in April 2023.
-- going to do an INNER JOIN between rooms and resverations where the roomId are the same.


SELECT 
	r.roomId AS room_number
    
FROM rooms r
INNER JOIN resverations res ON res.roomId = r.roomId
WHERE r.maximumOccupancy >= 3 AND 									-- has a capacity of at least 3
((res.checkInDate BETWEEN '2023-04-01' AND '2023-04-30') OR 	-- checked in during April
(res.checkOutDate BETWEEN '2023-04-01' AND '2023-04-30') OR 	-- checked out during April
((res.checkInDate < '2023-04-01' ) AND (res.checkOutDate > '2023-04-30')));	-- Stayed during April

-- results 
  -- 301