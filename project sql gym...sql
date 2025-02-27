CREATE DATABASE mygym;
use mygym;

#table 1
CREATE TABLE Members (
    member_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender CHAR(1),
    membership_type VARCHAR(20),  
    join_date DATE,
    phone VARCHAR(15));
    
#data table 1
insert into Members (first_name, last_name, gender, membership_type, join_date, phone) values('Sahil','Shelar','m','gold','2023-01-01',8591650200),
('Rohit','Sawant','m','gold','2023-01-11',2546785461),('aniket','tetme','m','gold','2023-01-13',9000024536),
('Sakshi','Badhe','f','silver','2023-01-15',1546859751),('avinash','Sekr','m','platinum','2023-01-19',95555662213),
('krishna','Shirsat','m','gold','2023-02-01',98564725156),('kapil','patil','m','silver','2023-02-16',9696545784),
('pavan','Shirsat','m','silver','2023-02-25',9565478245),('pari','gadge','f','gold','2023-02-28',9987878784),
('snehal','Shelar','f','silver','2023-03-03',9956487256),('Saujanya','gadge','f','gold','2023-03-03',9956122213),
('krunal','parthe','m','gold','2023-01-06',9999564875),('snehal','Shinde','f','silver','2023-06-25',8522356545),
('vijay','Shelar','m','platinum','2023-05-25',8585754847),('rishabh','tavdare','m','silver','2023-05-28',8595252525),
('kunal','nalawade','m','gold','2024-06-21',8844775657),('shreyash','Sawant','m','platinum','2023-06-15',8592564870),
('aditya','kapre','m','platinum','2023-10-01',8889995476),('rakesh','chavan','m','gold','2023-07-22',85916222311),
('parth','bhosle','m','silver','2023-11-14',8216547595),('shubham','chavan','m','platinum','2023-07-27',8591652222),
('shankar','katke','m','platinum','2023-12-12',8965421123),('rahul','khatu','m','gold','2023-10-14',8888225461),
('amol','tetme','m','silver','2024-06-11',9696989895),('amit','patil','m','gold','2024-04-11',8022311254);
select*from Members;

#table 2
CREATE TABLE Trainers (
    trainer_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    specialization VARCHAR(50),  
    experience INT );
    
#data table 2
INSERT INTO Trainers VALUES 
(101,'karan','shete','weight_training',6),(102,'varsha','shelar','yoga',2),
(104,'sanyukta','gadge','women_trainer',8),(105,'siddesh','wayase','strength trainer',9),
(106,'junaid','khan','cardio',4),(107,'karam','shelar','sports_traie',3);
select*from Trainers;

#table 3
CREATE TABLE Personal_Training (
    member_id INT,
    trainer_id INT,
    assigned_date DATE,
    PRIMARY KEY (member_id, trainer_id),
    FOREIGN KEY (member_id) REFERENCES Members(member_id),
    FOREIGN KEY (trainer_id) REFERENCES Trainers(trainer_id)
);

#data table 3
INSERT INTO Personal_Training VALUES 
(1,101,'2023-01-02'),(2,101,'2023-01-12'),(3,101,'2023-01-14'),(4,102,'2023-01-17'),(5,104,'2023-01-13'),
(6,105,'2023-02-10'),(7,105,'2023-02-18'),(8,105,'2023-02-28'),(9,102,'2023-02-28'),(10,104,'2023-03-04'),
(11,104,'2023-03-04'),(12,104,'2023-01-07'),(13,104,'2023-06-25'),(14,106,'2023-05-25'),(15,106,'2023-05-28'),
(16,107,'2023-06-21'),(17,107,'2023-06-15'),(18,107,'2023-10-01'),(19,107,'2023-07-22'),(20,107,'2023-11-14'),
(21,101,'2023-07-27'),(22,106,'2023-12-12'),(23,106,'2023-10-14'),(24,106,'2023-06-11'),(25,101,'2023-04-11');

#table 4
CREATE TABLE Gym_Cafe (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    member_id INT,
    item VARCHAR(50),
    price DECIMAL(6, 2),
    FOREIGN KEY (member_id) REFERENCES Members(member_id)
);
#data table 4
INSERT INTO Gym_Cafe (member_id, item, price)VALUES
(1, 'Smoothie', 50),(2, 'Sandwich', 60),(1, 'Coffee', 20),
(4, 'Shake', 40),(5, 'Chicken Rice', 100),(6, 'Smoothie', 50),
(7, 'Coffee', 20),(8, 'Sandwich', 60),(11, 'Shake', 40),
(10, 'Chicken Rice', 100),(11, 'Smoothie', 50),(12, 'Coffee', 20),
(13, 'Sandwich', 60),(14, 'Shake', 40),(15, 'Chicken Rice', 100),
(6, 'Smoothie', 50),(1, 'Coffee', 20),(18, 'Sandwich', 60),
(2, 'Shake', 40),(20, 'Chicken Rice', 100),(11, 'Smoothie', 50),
(22, 'Coffee', 20),(13, 'Sandwich', 60),(24, 'Shake', 40),
(25, 'Chicken Rice', 100),(1, 'Shake', 40),(2, 'Coffee', 20),
(3, 'Chicken Rice', 100),(14, 'Smoothie', 50),(5, 'Sandwich', 60),
(6, 'Shake', 40),(7, 'Chicken Rice', 100),(8, 'Smoothie', 50),
(19, 'Coffee', 20),(10, 'Sandwich', 60),(11, 'Chicken Rice', 100),
(2, 'Shake', 40),(13, 'Smoothie', 50),(1, 'Coffee', 20),
(15, 'Sandwich', 60),(16, 'Chicken Rice', 100),(7, 'Smoothie', 50),
(8, 'Shake', 40),(19, 'Coffee', 20),(20, 'Sandwich', 60),
(21, 'Chicken Rice', 100),(2, 'Shake', 40),(2, 'Smoothie', 50),
(13, 'Coffee', 20),(25, 'Sandwich', 60);

#see data from all the tables
select*from members;
select*from trainers;
select*from personal_training;
select*from Gym_cafe;

#how much male and female in gym
SELECT gender, COUNT(*) AS total_count
FROM Members
GROUP BY gender;

#membership type count 
SELECT membership_type, COUNT(*) AS total_count
FROM Members
GROUP BY membership_type;

#distinct
select distinct item from Gym_Cafe;

#Join Query to Get Members and Their Trainers
SELECT M.first_name AS member_name, T.first_name AS trainer_name, PT.assigned_date
FROM Members as M
JOIN personal_training as PT 
ON M.member_id = PT.member_id
JOIN Trainers as T 
ON PT.trainer_id = T.trainer_id;

#Get Members Who Have Purchased in the Gym Cafe
SELECT first_name, last_name
FROM Members
WHERE member_id IN (
    SELECT member_id FROM Gym_Cafe );
    
SELECT member_id, item, price
FROM Gym_Cafe gc
WHERE price = (
    SELECT MAX(price)
    FROM Gym_Cafe
    WHERE member_id = gc.member_id
);

#Find the Members Who Spent More Than 100 at the Cafe
SELECT first_name, last_name, member_id,phone
FROM Members
WHERE member_id IN (
    SELECT member_id
    FROM Gym_Cafe
    GROUP BY member_id
    HAVING SUM(price) > 100
);










