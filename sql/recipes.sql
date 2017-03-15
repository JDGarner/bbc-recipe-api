DROP TABLE recipes;
CREATE TABLE recipes (
  id serial primary key,
  recipeId integer,
  name text,
  cookingTime integer,
  mainIngredients text,
  imageURL text
);

DELETE FROM recipes;
INSERT INTO recipes
(recipeId, name, cookingTime, mainIngredients, imageURL)
VALUES
(1, 'Lemon Chicken', 20, 'Chicken, Lemon, Thyme', 'lemon-chicken.jpg'),
(2, 'Vegetable Biriyani', 25, 'Potato, Carrots, Green Beans, Rice', 'veg-biriyani.jpg'),
(3, 'Spaghetti Bolognese', 15, 'Spaghetti, Beef, Tomato, Cheese', 'spaghetti-bolognese.jpg'),
(4, 'Eggs Benedict', 10, 'Eggs, Bacon, Hollandaise Sauce', 'eggs-benedict.jpg'),
(5, 'Lentil Soup', 35, 'Lentils, Potato, Carrot', 'lentil-soup.jpg'),
(6, 'Chicken Teriyaki', 35, 'Chicken, Soy Sauce, Rice', 'chicken-teriyaki.jpg'),
(7, 'Chilli Con Carne', 30, 'Beef, Tomato, Kidney Beans', 'chilli-con-carne.jpg'),
(8, 'Bacon Sandwich', 5, 'Bacon, Bread, Butter', 'bacon-sandwich.jpg'),
(9, 'Aloo Gobi', 30, 'Potato, Cauliflower', 'aloo-gobi.jpg'),
(10, 'Lasanga', 45, 'Beef, Tomato, Onion', 'lasanga.jpg'),
(11, 'Miso Soup', 30, 'Tofu, Miso Paste, Seaweed', 'miso-soup.jpg'),
(12, 'Pizza Margherita', 45, 'Tomato, Cheese', 'pizza-marghertia.jpg'),
(13, 'Paneer Masala', 20, 'Paneer, Tomato, A lot of spices', 'paneer-masala.jpg'),
(14, 'Chicken Tikka Masala', 35, 'Chicken, A lot of spices', 'chicken-tikka-masala.jpg'),
(15, 'Chana Masala', 30, 'Chickpeas, Tomato, More spices', 'chana-masala.jpg'),
(16, 'Beef Stroganoff', 30, 'Beef, Mustard, Mushrooms', 'beef-stroganoff.jpg');
