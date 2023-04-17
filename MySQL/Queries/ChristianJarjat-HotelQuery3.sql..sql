-- query 3

-- returns all the rooms reserved for a specific guest, this one being 'Maritza Tilton'
-- displaying the guest's name, the room(s) reserved, the starting date of the reservation, and how many people were included in the reservation. 
 -- going to Inner join resverations and guests together with guest ID
 -- then finds where both first and last name are equall to Martiza's names

USE hotelreservation;

SELECT 
	res.resverationId,
	CONCAT(g.guestFirstName, ' ', g.guestLastName) AS guest_name,
    res.roomId AS room_number,
    res.checkInDate AS check_in_date,
    res.numberAdult + numberChildren AS number_people
    
FROM resverations res
INNER JOIN guests g ON res.guestId = g.guestId
WHERE g.guestFirstName = 'Maritza'	AND  g.guestLastName = 'Tilton';	-- gets the rooms for Maritza

-- results 
-- 115	Maritza Tilton	302	2023-12-24	2
-- 123	Maritza Tilton	401	2023-05-30	6