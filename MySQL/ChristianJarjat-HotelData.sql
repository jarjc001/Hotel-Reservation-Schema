-- manages the data of the database

USE hotelreservation;

SELECT * FROM guests;


-- add into the amenities table
INSERT INTO amenities (amenityId, microwave, fridge, jacuzzi, oven)
VALUES 
		ROW (1, 1, NULL, 1, NULL),
        ROW (2, 1, 1, NULL, NULL),
        ROW (3, 1, 1, 1, NULL),
        ROW (4, 1, 1, NULL, 1),
        ROW (5, NULL, 1, NULL, NULL);
        
        
        


-- rest of the tables will be added to by csv files and the inport wizard




-- delete reference Jeremiah Pendergrass, their Guest ID is 7

-- incase the delete comes up with an error
SET SQL_SAFE_UPDATES = 0;

-- -- delete from resverations
DELETE FROM resverations
WHERE guestId = 7;

-- -- then deletes from guests
DELETE FROM guests
WHERE guestId = 7;

-- sets to normal conditions
SET SQL_SAFE_UPDATES = 1;




-- look at each table
SELECT * FROM amenities;
SELECT * FROM guests;
SELECT * FROM resverations;
SELECT * FROM rooms;

