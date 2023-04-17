"# Hotel-Reservation-Schema" 

Part 1: ERD

Using the data presented above, create an ERD that represents the database.

Specifications for the ERD:

    The ERD should be created separately from the RDBMS. (E.g., Draw.io; shapes in Google Docs, Word, or PowerPoint; or paper and pencil)
    The design should be in second normal form.
    All tables and columns should be named appropriately so that it is easy to map data to the database.
    The ERD should specify the data type and field size (where appropriate) for each column.
    The ERD should indicate the nullability of all non-key fields.
    The ERD should identify primary keys and foreign keys in each table.
    The ERD should identify all relationships between tables.

Save the ERD as a file named YourName-HotelERD.jpg. If you choose to use paper and pencil, submit a clear scan or image that is easy to read.

When you have completed the ERD, submit it to your instructor for review, make any necessary changes based on feedback, and resubmit. Once the instructor has approved the ERD, you are ready to move to the next part.
Part 2: Define the Database

Using your ERD as an example, create a SQL script that performs the following steps:

    Drops the existing database, if it exists, so that the script can rebuild a database with the same name.
    Creates the tables with all appropriate fields, data types, and keys, using the structure indicated in the ERD.
        Tip: Create the primary tables first, followed by the tables with foreign keys.

The script should run from beginning to end without errors.

Name the file YourName-HotelDB.sql.
Part 3: Manage the Data

Create a separate SQL script to manage data in the tables.

First, using the data provided in the tables above, create the required SQL statements to populate the tables with the data above.

    Include your name, address, and phone number in the first record of the table for guests. You may use a fictitious address and phone number, as long as you use your own name.
    As with the tables, add data to the primary tables before adding data to the tables with foreign keys.

Rather than keying out all of the data by hand, you will find it easier to copy the data from the tables given above and paste the data into a spreadsheet program like Excel, using a separate file for each table. Move/copy data as necessary in and across the spreadsheets based on your ERD, and then use the MySQL Workbench Import tool to import the data into each table.

The code-along named Add Data to the Vinyl Record Shop Database includes instructions for importing CSV data into a database.

Second, after adding all of the data above, create SQL statements that will delete Jeremiah Pendergrass and his reservations from the database.

    Deleting data should start with records that reference Jeremiah Pendergrass using a foreign key and then delete the record from the guest table as the last step.
    The scripts should only delete records related to Jeremiah Pendergrass and his reservations. They should not delete any room data.

The script should run from beginning to end without errors.

Name the file YourName-HotelData.sql.
Part 4: Query the Database

Create a third SQL script that includes queries to retrieve the following data from the database.

    Write a query that returns a list of reservations that end in July 2023, including the name of the guest, the room number(s), and the reservation dates.
    Write a query that returns a list of all reservations for rooms with a jacuzzi, displaying the guest's name, the room number, and the dates of the reservation.
    Write a query that returns all the rooms reserved for a specific guest, including the guest's name, the room(s) reserved, the starting date of the reservation, and how many people were included in the reservation. (Choose a guest's name from the existing data.)
    Write a query that returns a list of rooms and reservation ID for each reservation. The results should include all rooms, whether or not there is a reservation associated with the room.
    Write a query that returns all the rooms accommodating at least three guests and that are reserved on any date in April 2023.
    Write a query that returns a list of all guest names and the number of reservations per guest, sorted starting with the guest with the most reservations and then by the guest's last name.
    Write a query that displays the name, address, and phone number of a guest based on their phone number. (Choose a phone number from the existing data.)

For each query, include:

    The request from this assignment as a comment above the query, including the number
    The query itself
    The results of the query in a comment under the query

Name the file YourName-HotelQueries.sql.


Feedback
Graded by Eugene O'Regan
100.00 %
Comments: Excellent organisation and documentation. 
