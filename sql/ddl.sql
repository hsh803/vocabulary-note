-- CRUD in voca

-- Create table (Create)
create table if not exists note
(
word VARCHAR(50) NOT NULL,
definition VARCHAR(100),
example VARCHAR(200)
);

-- Procedure to insert values to the table, note
DELIMITER ;;
create procedure add_word(
a_word VARCHAR(50),
a_definition VARCHAR(100),
a_example VARCHAR(200)
)
BEGIN

INSERT INTO note VALUES (a_word, a_definition, a_example);

END
;;
DELIMITER ;

-- Procedure for reading the data from the table (Read) 
DELIMITER ;;
create procedure show_note()
BEGIN

select * from note;

END
;;
DELIMITER ;

-- Prodecure for reading specific rows from the table (Read)
DELIMITER ;;
create procedure show_word
(
s_word VARCHAR(50)
)
BEGIN

select * from note WHERE word = s_word;

END
;;
DELIMITER ;

-- Prodecure for searching the data from the table (Read)
DELIMITER ;;
create procedure search_word
(
s_word VARCHAR(50)
)
BEGIN

select * from note 
WHERE
word LIKE s_word;

END
;;
DELIMITER ;

-- Prodecure for updating the data from the table (Update)
DELIMITER ;;
create procedure edit_word
(
e_word VARCHAR(50),
e_definition VARCHAR(100),
e_example VARCHAR(200)
)
BEGIN

UPDATE note SET
definition = e_definition,
example = e_example
WHERE word = e_word;

END
;;
DELIMITER ;

-- Prodecure for deleting the data from the table (Delete)
DELIMITER ;;
create procedure delete_word
(
d_word VARCHAR(50)
)
BEGIN

delete from note WHERE word = d_word;

END
;;
DELIMITER ;
