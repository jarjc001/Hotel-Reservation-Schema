--  query 2

-- returns a list of all reservations for rooms with a jacuzzi, That would be amenityId = 1 or 3
-- displaying the guest's name, the room number, and the dates of the reservation.
-- going to use a Inner JOIN between all the Tables where the Primary and foregin Keys are the same
-- this will link all the info for every resveration, so i can get the amenities info and the guest info

USE hotelreservation;

SELECT 
	res.resverationId,
	CONCAT(g.guestFirstName, ' ', g.guestLastName) AS guest_name,
    res.roomId AS room_number,
    res.checkInDate AS check_in_date,
    res.checkOutDate AS check_out_date
    
FROM resverations res
INNER JOIN rooms r ON res.roomId = r.roomId					-- gets the room info
INNER JOIN amenities a ON a.amenityId = r.amenityId			-- gets amenity info
INNER JOIN guests g ON res.guestId = g.guestId				-- gets guest info
WHERE a.amenityId = 1 OR a.amenityId = 3;		-- if the room has a Jacuzzi

-- results 
-- 101	Karie Yang	201	2023-03-06	2023-03-07
-- 103	Bettyann Seery	203	2023-02-05	2023-02-10
-- 104	Karie Yang	203	2023-09-13	2023-09-15
-- 110	Mack Simmer	301	2023-11-22	2023-11-25
-- 113	Walter Holaway	301	2023-04-09	2023-04-13
-- 116	Bettyann Seery	303	2023-07-28	2023-07-29
-- 106	Christian Jarjat	205	2023-06-28	2023-07-02
-- 119	Duane Cullison	305	2023-02-22	2023-02-24
-- 120	Bettyann Seery	305	2023-08-30	2023-09-01
-- 121	Christian Jarjat	307	2023-03-17	2023-03-20
