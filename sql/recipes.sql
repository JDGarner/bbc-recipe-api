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
(1, 'Lemon Chicken', 30, 'Chicken, Lemon, Thyme', 'lemon-chicken.jpg'),
(2, 'Lemon Chicken 2', 30, 'Chicken, Lemon, Thyme', 'lemon-chicken.jpg'),
(3, 'Lemon Chicken 3', 30, 'Chicken, Lemon, Thyme', 'lemon-chicken.jpg'),
(4, 'Lemon Chicken 4', 30, 'Chicken, Lemon, Thyme', 'lemon-chicken.jpg'),
(5, 'Lemon Chicken 5', 30, 'Chicken, Lemon, Thyme', 'lemon-chicken.jpg'),
(6, 'Lemon Chicken 6', 30, 'Chicken, Lemon, Thyme', 'lemon-chicken.jpg'),
(7, 'Lemon Chicken 7', 30, 'Chicken, Lemon, Thyme', 'lemon-chicken.jpg'),
(8, 'Lemon Chicken 8', 30, 'Chicken, Lemon, Thyme', 'lemon-chicken.jpg'),
(9, 'Lemon Chicken 9', 30, 'Chicken, Lemon, Thyme', 'lemon-chicken.jpg'),
(10, 'Lemon Chicken 10', 30, 'Chicken, Lemon, Thyme', 'lemon-chicken.jpg'),
(11, 'Lemon Chicken 11', 30, 'Chicken, Lemon, Thyme', 'lemon-chicken.jpg'),
(12, 'Lemon Chicken 12', 30, 'Chicken, Lemon, Thyme', 'lemon-chicken.jpg'),
(13, 'Lemon Chicken 13', 30, 'Chicken, Lemon, Thyme', 'lemon-chicken.jpg'),
(14, 'Lemon Chicken 14', 30, 'Chicken, Lemon, Thyme', 'lemon-chicken.jpg'),
(15, 'Lemon Chicken 15', 30, 'Chicken, Lemon, Thyme', 'lemon-chicken.jpg'),
(16, 'Lemon Chicken 16', 30, 'Chicken, Lemon, Thyme', 'lemon-chicken.jpg'),
(17, 'Lemon Chicken 17', 30, 'Chicken, Lemon, Thyme', 'lemon-chicken.jpg'),
(18, 'Lemon Chicken 18', 30, 'Chicken, Lemon, Thyme', 'lemon-chicken.jpg'),
(19, 'Beef Stroganoff', 20, 'Beef, Mustard, Mushrooms', 'beef-stroganoff.jpg');
