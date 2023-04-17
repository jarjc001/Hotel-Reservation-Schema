-- Defines the data base and creates the tables in it


-- Drops any existing databases, then rebuilds a database with the same name. It will then be ready to use

DROP DATABASE IF EXISTS hotelreservation;
CREATE DATABASE hotelreservation;
USE hotelreservation;

-- Creates Primary Tables of the data Base

-- Creates the amenities table
DROP TABLE IF EXISTS amenities;
CREATE TABLE amenities (
amenityId INT,						-- PK
microwave TINYINT(1) NULL,
fridge TINYINT(1) NULL,
jacuzzi TINYINT(1) NULL,
oven TINYINT(1) NULL,
 CONSTRAINT pk_amenities 
        PRIMARY KEY (amenityId)
);

-- Creates the Guests Table
DROP TABLE IF EXISTS guests;
CREATE TABLE guests (
guestId INT AUTO_INCREMENT,				-- PK   will auto increment if adding new guests
guestFirstName VARCHAR(25) NULL,
guestLastName VARCHAR(50) NOT NULL,
guestAddress VARCHAR(100) NOT NULL,
guestCity VARCHAR(50) NOT NULL,
guestState VARCHAR(2) NOT NULL,
guestZip VARCHAR(5) NOT NULL,
guestPhone VARCHAR(15) NOT NULL,
 CONSTRAINT pk_guests 
        PRIMARY KEY (guestId)
);


-- Creates Related Tables of the data Base

-- Creates the Rooms Table, with a FK from amenities
DROP TABLE IF EXISTS rooms;
CREATE TABLE rooms (
    roomId INT,				-- PK
    
    RoomType VARCHAR(6) NOT NULL,     
    amenityId INT NOT NULL,     -- FK
    ada TINYINT(1) NOT NULL,
    standardOccupancy INT NOT NULL,
    maximumOccupancy INT NOT NULL,
    BasePrice DECIMAL(5,2) NOT NULL,
    extraPerson DECIMAL(5,2) NULL,  
    
	
    
    CONSTRAINT pk_rooms 
    	PRIMARY KEY (roomId),
	CONSTRAINT fk_rooms_amenities FOREIGN KEY (amenityId)
    	REFERENCES amenities(amenityId)
);

-- Creates the resverations Table, with a FK from rooms and guests
DROP TABLE IF EXISTS resverations;
CREATE TABLE resverations (
    resverationId INT AUTO_INCREMENT,		-- PK    will auto increment if adding new resverations
    
    roomId INT NOT NULL,			-- FK
    guestId INT NOT NULL,			-- FK
    
    numberAdult INT NOT NULL,
	numberChildren INT NOT NULL,
    
    checkInDate date NOT NULL,
    checkOutDate date NOT NULL,
      
    
    CONSTRAINT pk_resverations 
    	PRIMARY KEY (resverationId),
	CONSTRAINT fk_resverations_guests FOREIGN KEY (guestId)
    	REFERENCES guests(guestId),
        
      CONSTRAINT fk_resverations_rooms FOREIGN KEY (roomId)
   	REFERENCES rooms(roomId)
);
