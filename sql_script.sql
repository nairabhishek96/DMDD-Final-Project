SET SQL_SAFE_UPDATES = 0;

select * from twitter_schema.university;
select * from twitter_schema.seller;
select * from twitter_schema.buyer;
select * from twitter_schema.student;
select * from twitter_schema.feedback;
select * from twitter_schema.product;
select * from twitter_schema.category;
select * from twitter_schema.tweet;
select * from twitter_schema.tweet_tags;
select * from twitter_schema.tweet_mentions;
select * from twitter_schema.twitter_order_details;
select * from twitter_schema.twitter_order_header;
	
SET FOREIGN_KEY_CHECKS = 1;
delete from twitter_schema.university;
delete from twitter_schema.seller;
delete from twitter_schema.buyer;
delete from twitter_schema.university;
delete from twitter_schema.feedback;
delete from twitter_schema.product;
delete from twitter_schema.category;
delete from twitter_schema.tweet;
delete from twitter_schema.tweet_tags;
delete from twitter_schema.tweet_mentions;
delete from twitter_schema.twitter_order_header;
delete from twitter_schema.twitter_order_details;
    
    
insert into twitter_schema.university (university_id, university_name, state, city) values (1, 'Northeastern University 1','MA1','Boston1');
insert into twitter_schema.university (university_id, university_name, state, city) values (2, 'Northeastern University 2','MA2','Boston2');
insert into twitter_schema.university (university_id, university_name, state, city) values (3, 'Northeastern University 3','MA3','Boston3');
insert into twitter_schema.university (university_id, university_name, state, city) values (4, 'Northeastern University 4','MA4','Boston4');
insert into twitter_schema.university (university_id, university_name, state, city) values (5, 'Northeastern University 5','MA5','Boston5');    

insert into twitter_schema.student (student_id, university_id, first_name, last_name) values (1,1,'Tejas 1','Parikh 1');
insert into twitter_schema.student (student_id, university_id, first_name, last_name) values (2,2,'Tejas 2','Parikh 2');
insert into twitter_schema.student (student_id, university_id, first_name, last_name) values (3,3,'Tejas 3','Parikh 3');
insert into twitter_schema.student (student_id, university_id, first_name, last_name) values (4,4,'Tejas 4','Parikh 4');
insert into twitter_schema.student (student_id, university_id, first_name, last_name) values (5,5,'Tejas 5','Parikh 5');

insert into twitter_schema.buyer (buyer_id, student_id) values (1,1);
insert into twitter_schema.buyer (buyer_id, student_id) values (2,2);
insert into twitter_schema.buyer (buyer_id, student_id) values (3,3);



insert into twitter_schema.seller (seller_id, student_id,premium_flag) values (4,4,1);
insert into twitter_schema.seller (seller_id, student_id,premium_flag) values (5,5,0);


insert into twitter_schema.tweet ( twitter_handle, tweet_text, profile_image_url, tweet_date, user_created_at, retweets) values ('abc1','sample_text1','profile_image_url_1','2022-12-12','2022-12-12',21);
insert into twitter_schema.tweet ( twitter_handle, tweet_text, profile_image_url, tweet_date, user_created_at, retweets) values ('abc2','sample_text2','profile_image_url_2','2022-11-11','2022-11-11',22);
insert into twitter_schema.tweet ( twitter_handle, tweet_text, profile_image_url, tweet_date, user_created_at, retweets) values ('abc3','sample_text3','profile_image_url_3','2022-10-10','2022-10-10',23);
insert into twitter_schema.tweet ( twitter_handle, tweet_text, profile_image_url, tweet_date, user_created_at, retweets) values ('abc4','sample_text4','profile_image_url_4','2022-12-11','2022-12-11',24);
insert into twitter_schema.tweet ( twitter_handle, tweet_text, profile_image_url, tweet_date, user_created_at, retweets) values ('abc5','sample_text5','profile_image_url_5','2022-11-12','2022-11-12',25);

insert into twitter_schema.tweet_mentions (tweet_id,source_user, target_user) values (1,'Sam5','Antony1');
insert into twitter_schema.tweet_mentions (tweet_id,source_user, target_user) values (2,'Sam1','Antony2');
insert into twitter_schema.tweet_mentions (tweet_id,source_user, target_user) values (3,'Sam2','Antony3');
insert into twitter_schema.tweet_mentions (tweet_id,source_user, target_user) values (4,'Sam3','Antony4');
insert into twitter_schema.tweet_mentions (tweet_id,source_user, target_user) values (5,'Sam4','Antony5');

insert into twitter_schema.tweet_tags (tweet_id,tag, target_user) values (1,'tag1','Antony1');
insert into twitter_schema.tweet_tags (tweet_id,tag, target_user) values (2,'tag2','Antony2');
insert into twitter_schema.tweet_tags (tweet_id,tag, target_user) values (3,'tag3','Antony3');
insert into twitter_schema.tweet_tags (tweet_id,tag, target_user) values (4,'tag4','Antony4');
insert into twitter_schema.tweet_tags (tweet_id,tag, target_user) values (5,'tag5','Antony5');

insert into twitter_schema.category (category_id,category_name) values (1,'Furniture');
insert into twitter_schema.category (category_id,category_name) values (2,'Furniture');
insert into twitter_schema.category (category_id,category_name) values (3,'Clothing');
insert into twitter_schema.category (category_id,category_name) values (4,'Furniture');
insert into twitter_schema.category (category_id,category_name) values (5,'Clothing');

insert into twitter_schema.feedback (feedback_id,feedback_score,comments) values (1,4,'Good Product');
insert into twitter_schema.feedback (feedback_id,feedback_score,comments) values (2,5,'Good Product');
insert into twitter_schema.feedback (feedback_id,feedback_score,comments) values (3,2,'Worst Product');
insert into twitter_schema.feedback (feedback_id,feedback_score,comments) values (4,2,'Worst Product');
insert into twitter_schema.feedback (feedback_id,feedback_score,comments) values (5,4,'Good Product');

insert into twitter_schema.product (product_id,product_name,category_id) values (1,'Table',1);
insert into twitter_schema.product (product_id,product_name,category_id) values (2,'Chair',2);
insert into twitter_schema.product (product_id,product_name,category_id) values (3,'Scarf',3);
insert into twitter_schema.product (product_id,product_name,category_id) values (4,'Cupboard',4);
insert into twitter_schema.product (product_id,product_name,category_id) values (5,'Shirt',5);

INSERT INTO twitter_schema.twitter_order_header (t_order_id,buyer_id,seller_id,tweet_id,feedback_id,order_date) values (1,1,4,1,1,'2022-12-12');
INSERT INTO twitter_schema.twitter_order_header (t_order_id,buyer_id,seller_id,tweet_id,feedback_id,order_date) values (2,2,4,2,2,'2012-12-12');
INSERT INTO twitter_schema.twitter_order_header (t_order_id,buyer_id,seller_id,tweet_id,feedback_id,order_date) values (3,3,5,3,3,'2002-12-12');
INSERT INTO twitter_schema.twitter_order_header (t_order_id,buyer_id,seller_id,tweet_id,feedback_id,order_date) values (4,1,4,4,4,'2021-12-12');
INSERT INTO twitter_schema.twitter_order_header (t_order_id,buyer_id,seller_id,tweet_id,feedback_id,order_date) values (5,2,5,5,5,'2020-12-12');

INSERT INTO twitter_schema.twitter_order_details(t_order_details_id,t_order_id,product_id,price) values (1,1,1,200.56);
INSERT INTO twitter_schema.twitter_order_details(t_order_details_id,t_order_id,product_id,price) values (2,2,2,100.56);
INSERT INTO twitter_schema.twitter_order_details(t_order_details_id,t_order_id,product_id,price) values (3,3,3,60.56);
INSERT INTO twitter_schema.twitter_order_details(t_order_details_id,t_order_id,product_id,price) values (4,4,4,4000.56);
INSERT INTO twitter_schema.twitter_order_details(t_order_details_id,t_order_id,product_id,price) values (5,5,5,2000.56);


-- 1) Use Case 1: Top 3 orders which have received the negative feedback
DROP VIEW twitter_schema.TOP_3_Negative_feedback_orders;
CREATE VIEW  twitter_schema.TOP_3_Negative_feedback_orders AS
SELECT t.t_order_id, f.feedback_score
FROM twitter_schema.twitter_order_header t
INNER JOIN twitter_schema.Feedback f
ON f.feedback_id = t.feedback_id
ORDER BY feedback_score ASC
LIMIT 3;

-- 2) Use Case 2: View Category Name and Product Name for a specific product ID
DROP VIEW twitter_schema.View_Category_Name_and_Product_name_for_product_id;
CREATE VIEW  twitter_schema.View_Category_Name_and_Product_name_for_product_id AS
SELECT p.product_name, c.category_name
FROM twitter_schema.Product p
INNER JOIN twitter_schema.Category c
ON p.category_id = c.category_id;

-- 3) Use Case 3: View tags mentioned by the particular twitter_user in a tweet_text
DROP VIEW twitter_schema.View_tags_mentioned_by_the_particular_twitter_user;
CREATE VIEW  twitter_schema.View_tags_mentioned_by_the_particular_twitter_user AS
SELECT t.twitter_handle, t.tweet_text, t.tweet_date, tt.tag
FROM twitter_schema.Tweet t
INNER JOIN twitter_schema.Tweet_tags tt
ON t.tweet_id = tt.tweet_id;
 
 -- 4) Use Case 4: Who are the sellers that are students and have they enrolled for a premium option?
 DROP VIEW twitter_schema.sellers_that_are_students_who_have_enrolled_for_premium_option;
 CREATE VIEW  twitter_schema.sellers_that_are_students_who_have_enrolled_for_premium_option AS
 SELECT student.first_name, student.last_name, seller.premium_flag
 FROM twitter_schema.Student student
 INNER JOIN twitter_schema.Seller seller
 ON student.student_id = seller.student_id
 where seller.premium_flag = 1;
 
 -- 5) Use Case 5: Who is the source and the target user mentioned by the particular twitter user in a tweet
 DROP VIEW twitter_schema.source_and_target_user_mentioned_by_the_particular_twitter_user;
CREATE VIEW  twitter_schema.source_and_target_user_mentioned_by_the_particular_twitter_user AS
SELECT t.twitter_handle, t.tweet_text, t.tweet_date, tm.source_user, tm.target_user
FROM twitter_schema.Tweet t
INNER JOIN twitter_schema.Tweet_Mentions tm
ON t.tweet_id = tm.tweet_id;

-- 6)  Use Case 6: View the items that can be purchased by the buyer
DROP VIEW twitter_schema.view_the_items_that_can_be_purchased_by_the_buyer;
CREATE VIEW  twitter_schema.view_the_items_that_can_be_purchased_by_the_buyer AS
SELECT p.product_name, c.category_name
FROM twitter_schema.Product p
INNER JOIN twitter_schema.Category c
ON c.category_id = p.category_id;

-- 7) Use Case 7: Which seller from the University sold the most items
DROP VIEW twitter_schema.which_seller_from_the_university_sold_most_items;
CREATE VIEW  twitter_schema.which_seller_from_the_university_sold_most_items AS
SELECT  a.first_name, a.last_name, t.Number_of_items_sold
FROM
(
               SELECT seller_id, count(product_id) AS `Number_of_items_sold`
               FROM twitter_schema.twitter_order_header oh
               INNER JOIN twitter_schema.twitter_order_details od
               ON oh.t_order_id = od.t_order_id
               GROUP BY seller_id
               ORDER BY 2 desc
               LIMIT 1
) AS t INNER JOIN twitter_schema.Seller b
 ON t.seller_id = b.seller_id
 INNER JOIN twitter_schema.Student a
 ON a.student_id = b.student_id;

-- 8) Use Case 8: View a product below a particular price
DROP VIEW twitter_schema.view_product_below_particular_price;
CREATE VIEW  twitter_schema.view_product_below_particular_price AS
SELECT p.product_name
FROM twitter_schema.Product p
INNER JOIN twitter_schema.twitter_order_details t
ON p.product_id = t.product_id
WHERE t.price < 5000;

-- 9) Use Case 9: Top 3 orders which received the worst feedback
DROP VIEW twitter_schema.top_3_orders_received_worst_feedback;
CREATE VIEW  twitter_schema.top_3_orders_received_worst_feedback AS
SELECT t.t_order_id
FROM twitter_schema.twitter_order_header t
INNER JOIN twitter_schema.Feedback f
ON f.feedback_id = t.feedback_id
ORDER BY feedback_score ASC
LIMIT 3;

-- 10) Use Case 10: Top 3 orders which have received the positive feedback
DROP VIEW twitter_schema.top_3_orders_received_positive_feedback;
CREATE VIEW  twitter_schema.top_3_orders_received_positive_feedback AS
SELECT t.t_order_id
FROM twitter_schema.twitter_order_header t
INNER JOIN twitter_schema.Feedback f
ON f.feedback_id = t.feedback_id
ORDER BY feedback_score DESC
LIMIT 3;

-- 11) Use Case 11: View the product with highest price.
DROP VIEW twitter_schema.product_with_the_highest_price;
CREATE VIEW twitter_schema.product_with_the_highest_price AS
SELECT product_name, Price
FROM
(SELECT product_id, MAX(price) Price
FROM twitter_schema.twitter_order_header oh
INNER JOIN twitter_schema.twitter_order_details od
ON oh.t_order_id = od.t_order_id
GROUP BY 1
ORDER BY Price Desc
LIMIT 1) O
INNER JOIN
twitter_schema.Product P
ON P.product_id = O.product_id;

-- 12) Use Case 12: View the items sold by a seller
DROP VIEW twitter_schema.items_sold_by_the_seller;
CREATE VIEW twitter_schema.items_sold_by_the_seller AS
SELECT P.product_name as product_name
FROM
(SELECT product_id
FROM twitter_schema.twitter_order_header oh
INNER JOIN twitter_schema.twitter_order_details od
ON oh.t_order_id = od.t_order_id
WHERE seller_id = 111) O
INNER JOIN
twitter_schema.Product P
ON P.product_id = O.product_id;

-- 13) Use Case 13: View the top selling product
DROP VIEW twitter_schema.top_selling_product;
CREATE VIEW twitter_schema.top_selling_product AS
SELECT product_name, ORDER_CNT
FROM
(SELECT product_id, COUNT(oh.t_order_id) ORDER_CNT
FROM twitter_schema.twitter_order_header oh
INNER JOIN twitter_schema.twitter_order_details od
ON oh.t_order_id = od.t_order_id
GROUP BY 1
ORDER BY ORDER_CNT DESC
LIMIT 1) O
INNER JOIN
twitter_schema.Product P
ON P.product_id = O.product_id;

-- 14) Use Case 14: View the seller with highest number of 5-star feedbacks
DROP VIEW twitter_schema.seller_with_highest_number_of_5_star_feedbacks;
CREATE VIEW twitter_schema.seller_with_highest_number_of_5_star_feedbacks AS
SELECT seller_id, COUNT(T_order_id) 5_STAR_TXN_COUNT
FROM twitter_schema.twitter_order_header T
LEFT JOIN
twitter_schema.Feedback F
ON F.feedback_id = T.feedback_id
WHERE feedback_score = 5
GROUP BY 1
ORDER BY 5_STAR_TXN_COUNT DESC
LIMIT 1;

-- 15) Use Case 15: What is the average number of transactions per seller for sellers without premium subscription?
DROP VIEW twitter_schema.avg1_nbr_of_trans_per_seller_without_premium_subs;
CREATE VIEW twitter_schema.avg1_nbr_of_trans_per_seller_without_premium_subs AS
SELECT AVG(Order_Count) Avg_Transactions_Per_Seller
FROM
(SELECT T.seller_id as seller_id, COUNT(T_order_id) Order_Count
FROM twitter_schema.twitter_order_header T
INNER JOIN
twitter_schema.Seller S
ON S.seller_id = T.seller_id
WHERE S.premium_flag = 0
GROUP BY 1) D;

-- 16) Use Case 16: Which State has the most number of buyers?
DROP VIEW twitter_schema.state_that_has_the_most_number_of_buyers;
CREATE VIEW twitter_schema.state_that_has_the_most_number_of_buyers AS
SELECT U.state as State, COUNT(B.buyer_id) Buyer_Count
FROM twitter_schema.University U
LEFT JOIN
twitter_schema.Student S
ON S.university_id = U.university_id
LEFT JOIN
twitter_schema.Buyer B
ON B.student_id = S.student_id
GROUP BY State
ORDER BY Buyer_Count DESC
LIMIT 1;

-- 17) Use Case 17: View premium seller with highest total sales amount
DROP VIEW twitter_schema.premium_seller_with_highest_total_sales_amount;
CREATE VIEW twitter_schema.premium_seller_with_highest_total_sales_amount AS
SELECT oh.seller_id as seller_id, SUM(od.price) as Total_Sales
FROM twitter_schema.twitter_order_header oh
INNER JOIN twitter_schema.twitter_order_details od
ON oh.t_order_id = od.t_order_id
INNER JOIN
twitter_schema.Seller S
ON S.seller_id = oh.seller_id
WHERE premium_flag = 1
GROUP BY seller_id
ORDER BY Total_Sales DESC
LIMIT 1;

-- 18) Use Case 18: University wise number of students
DROP VIEW twitter_schema.university_wise_number_of_students;
CREATE VIEW twitter_schema.university_wise_number_of_students AS
SELECT university_name, COUNT(student_id) student_count
FROM twitter_schema.University U
INNER JOIN
twitter_schema.Student S
ON S.university_id = U.university_id
GROUP BY 1;

-- 19) Use Case 19: View premium seller with lowest total sales amount
DROP VIEW twitter_schema.premium_seller_with_lowest_total_sales_amount;
CREATE VIEW twitter_schema.premium_seller_with_lowest_total_sales_amount AS
SELECT oh.seller_id as seller_id, SUM(od.price) as Total_Sales
FROM twitter_schema.twitter_order_header oh
INNER JOIN twitter_schema.twitter_order_details od
ON oh.t_order_id = od.t_order_id
INNER JOIN
twitter_schema.Seller S
ON S.seller_id = oh.seller_id
WHERE premium_flag = 1
GROUP BY seller_id
ORDER BY Total_Sales ASC
LIMIT 1;

-- 20) Use Case 20: Which State has the least number of buyers?
DROP VIEW twitter_schema.state_that_has_the_least_number_of_buyers;
CREATE VIEW twitter_schema.state_that_has_the_least_number_of_buyers AS
SELECT U.state as State, COUNT(B.buyer_id) Buyer_Count
FROM twitter_schema.University U
LEFT JOIN
twitter_schema.Student S
ON S.university_id = U.university_id
LEFT JOIN
twitter_schema.Buyer B
ON B.student_id = S.student_id
GROUP BY State
ORDER BY Buyer_Count ASC
LIMIT 1;


-- VIEWS

SELECT *
FROM twitter_schema.avg1_nbr_of_trans_per_seller_without_premium_subs;

SELECT * 
FROM twitter_schema.items_sold_by_the_seller;

SELECT * 
FROM twitter_schema.premium_seller_with_highest_total_sales_amount;

SELECT * 
FROM twitter_schema.premium_seller_with_lowest_total_sales_amount;

SELECT * 
FROM twitter_schema.product_with_the_highest_price;

SELECT * 
FROM twitter_schema.seller_with_highest_number_of_5_star_feedbacks;

SELECT * 
FROM twitter_schema.sellers_that_are_students_who_have_enrolled_for_premium_option;

SELECT * 
FROM twitter_schema.source_and_target_user_mentioned_by_the_particular_twitter_user;

SELECT * 
FROM twitter_schema.state_that_has_the_least_number_of_buyers;

SELECT * 
FROM twitter_schema.state_that_has_the_most_number_of_buyers;

SELECT * 
FROM twitter_schema.top_3_negative_feedback_orders;

SELECT * 
FROM twitter_schema.top_3_orders_received_positive_feedback;

SELECT * 
FROM twitter_schema.top_3_orders_received_worst_feedback;

SELECT * 
FROM twitter_schema.top_selling_product;

SELECT * 
FROM twitter_schema.university_wise_number_of_students;

SELECT * 
FROM twitter_schema.view_category_name_and_product_name_for_product_id;

SELECT * 
FROM twitter_schema.view_product_below_particular_price;

SELECT * 
FROM twitter_schema.view_tags_mentioned_by_the_particular_twitter_user;

SELECT * 
FROM twitter_schema.view_the_items_that_can_be_purchased_by_the_buyer;

SELECT * 
FROM twitter_schema.which_seller_from_the_university_sold_most_items;
