CREATE TABLE City  (

    City_id int PRIMARY KEY,

    City_name varchar(16) NOT NULL

);



CREATE TABLE Cinema (

    Cinema_id int PRIMARY KEY,

    City_id int NOT NULL,

    Cinema_name varchar(32) NOT NULL,



    FOREIGN KEY (City_id) REFERENCES City(City_id)

);



CREATE TABLE Movies (

    Movie_id int PRIMARY KEY,

    Movie_title varchar(32) NOT NULL,

    Movie Duration int NOT NULL

);



CREATE TABLE Screening (

    Movie_id int,

    Cinema_id int,

    Screen_id int,

    Screen_time int,



    FOREIGN KEY (Movie_id) REFERENCES Movies(Movie_id),

    FOREIGN KEY (Cinema_id) REFERENCES Cinema(Cinema_id)

);



CREATE TABLE BookTicket (

    BT_ID int PRIMARY KEY,

    Movie_id int,

    Cinema_id int,

    Screen_id int,

    SeatNum int,



    FOREIGN KEY (Movie_id) REFERENCES Movies(Movie_id),

    FOREIGN KEY (Cinema_id) REFERENCES Cinema(Cinema_id),

    FOREIGN KEY (Screen_id) REFERENCES Screening(Screen_id)

)