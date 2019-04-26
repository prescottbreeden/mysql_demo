#Basic MySQL Shell Commands
    - USE database_name: select a database
    - Source file_name: run a sql script
    - DESC table_name: describe the properties of the table
    - DROP database_name: delete a database
    - DROP table_name: delete a table 
        (note, any other tables that have FK references will have to be deleted first)

#Query Syntax (reminder: whitespace doesn't matter!)

##SELECT
    - select all:
        SELECT * FROM users;
    - select with criteria:

        SELECT * FROM users WHERE user_id = 1;

##INSERT
    INSERT INTO users (first_name, last_name, email, password)
         VALUES ('bob', 'ross', 'bob@ross.com', '12345');

##UPDATE
    UPDATE users
       SET password = 'rubber baby buggy bumpers'
     WHERE email = 'bob@ross.com';

##DELETE
    DELETE users
     WHERE user_id = 1;