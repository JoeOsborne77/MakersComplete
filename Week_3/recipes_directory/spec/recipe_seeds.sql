TRUNCATE TABLE recipes RESTART IDENTITY;

INSERT INTO recipes (id, name, time, rating) VALUES
(1, 'Banana Cake', 20, 4),
(2, 'Mushroom Wellington', 120, 5),
(3, 'Egg and Cress Sandwich', 10, 3),
(4, 'Butternut Squash & Coconut Curry', 75, 5),
(5, 'Sticky Toffee Pudding', 50, 5);