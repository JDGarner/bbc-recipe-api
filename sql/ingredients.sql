DROP TABLE ingredients;
CREATE TABLE ingredients (
  id serial primary key,
  name text,
  recipeId integer,
  quantity float,
  quantityType text
);

DELETE FROM ingredients;
INSERT INTO ingredients
(name, recipeId, quantity, quantityType)
VALUES
('Chicken Breast', 1, 4, 'x'),
('Thyme', 1, 1, 'tsp'),
('Lemon', 1, 1, 'x'),
('Beef', 19, 250, 'g');
