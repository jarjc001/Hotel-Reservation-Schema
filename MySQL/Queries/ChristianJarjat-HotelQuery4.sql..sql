USE hotelreservation;


-- query 4

-- Returns a list of rooms with their reservation 
-- if a room doesn't have a reservation, it will still be printed
-- going to Left Outer join from rooms to reservations. this will link the room info to reservation info
	

SELECT 
	r.roomId AS room_number,
    res.resverationId AS reservation_ID
    -- put function for total cost
    FROM rooms r
Left Outer JOIN resverations res ON res.roomId = r.roomId
ORDER BY room_number;  -- orders from smallest room number to largest room number

-- results 
-- 201	101
-- 202	102
-- 203	103
-- 203	104
-- 204	105
-- 205	106
-- 206	107
-- 206	109
-- 207	111
-- 208	108
-- 208	112
-- 301	110
-- 301	113
-- 302	114
-- 302	115
-- 303	116
-- 304	118
-- 305	119
-- 305	120
-- 306	
-- 307	121
-- 308	122
-- 401	123
-- 401	124
-- 401	125
-- 402	