TRUNCATE TABLE user_accounts, timeline_posts RESTART IDENTITY; 

INSERT INTO user_accounts (email_address, username) VALUES 
('peterb@hotmail.co.uk', 'PeterB7'),
('johntyp@gmail.com', 'johnty82'),
('ginag84@gmail.com', 'gina_g');

INSERT INTO timeline_posts (title, content, views, user_account_id) VALUES 
('Today', 'I ate an apple', 5000, 1),
('Yesterday', 'I ate a cookie', 10000, 1),
('Tomorrow', 'I will eat an orange', 3400, 2),
('Next week', 'I will go to the beach', 2000, 2),
('Next year', 'I will turn 184 years old', 1000000, 3),
('Ah but I', 'was so much older then, I am younger than that now', 500, 3)
;