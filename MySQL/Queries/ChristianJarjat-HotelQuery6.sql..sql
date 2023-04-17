USE hotelreservation;

-- query 6

-- returns a list of all guest names and the number of reservations per guest
-- it is sorted from most reservations to least
-- going to INNER join from guests to reservations from guest ID, 
-- this will link the guest info to the reservation info.
-- Then will group them by name, so each name has all of their reservations.
-- Then use COUNT to count how many reservations there are per name


	SELECT 
		CONCAT(g.guestFirstName, ' ', g.guestLastName) AS guest_name,
        COUNT(res.resverationId) AS number_of_reservations		-- the number of reservations per person
        
	FROM guests g
    INNER JOIN resverations res ON res.guestId = g.guestId
    GROUP BY guest_name				-- groups the reservations by guest name
    ORDER BY number_of_reservations DESC;	-- orders from largest # of reservations to the least
    
    -- results 
-- Mack Simmer	4
-- Bettyann Seery	3
-- Duane Cullison	2
-- Karie Yang	2
-- Aurore Lipton	2
-- Walter Holaway	2
-- Wilfred Vise	2
-- Maritza Tilton	2
-- Joleen Tison	2
-- Christian Jarjat	2
-- Zachery Luechtefeld	1