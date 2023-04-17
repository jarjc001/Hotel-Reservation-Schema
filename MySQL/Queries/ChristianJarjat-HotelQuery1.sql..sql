
USE hotelreservation;




-- query 1

--  returns a list of reservations that end in July 2023
-- Displays the resveration ID,  name of the guest, the room number(s), and the reservation dates.
-- Going to use an inner join between resverations and guests where the guest id PK/FK are the same
-- this will get the guest info for each resveration we want

SELECT 					
	res.resverationId,
	CONCAT(g.guestFirstName, ' ', g.guestLastName) AS guest_name,
    res.roomId AS room_number,
    res.checkInDate AS check_in_date,
    res.checkOutDate AS check_out_date
    
FROM resverations res
INNER JOIN guests g ON res.guestId = g.guestId
WHERE res.checkOutDate BETWEEN '2023-07-01' AND '2023-07-31';		-- if they check out in July


-- results 
-- 105	Walter Holaway	204	2023-07-13	2023-07-14
-- 106	Christian Jarjat	205	2023-06-28	2023-07-02
-- 116	Bettyann Seery	303	2023-07-28	2023-07-29
-- 124	Wilfred Vise	401	2023-07-18	2023-07-21


