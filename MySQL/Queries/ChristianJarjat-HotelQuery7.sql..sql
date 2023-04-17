-- query 7

-- displays the name, address, and phone number of a guest based on their phone number
-- going to use (214) 730-0298 as the chosen phone number

SELECT 
		CONCAT(guestFirstName, ' ', guestLastName) AS guest_name ,
        guestAddress,
        guestPhone
FROM guests
WHERE guestPhone = '(214) 730-0298';

-- results 
-- Karie Yang	9378 W. Augusta Ave.	(214) 730-0298