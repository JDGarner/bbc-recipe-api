DROP TABLE ingredients;
CREATE TABLE ingredients (
  id serial primary key,
  name text,
  recipeId integer,
  quantity decimal,
  quantityType text
);

DELETE FROM ingredients;
INSERT INTO ingredients
(name, recipeId, quantity, quantityType)
VALUES
('Chicken Breast', 1, 4, 'x'), ('Thyme', 1, 1, 'tsp'), ('Lemon', 1, 1, 'x'),
('Potato', 2, 2, 'x'), ('Carrot', 2, 2, 'x'), ('Green Beans', 2, 10, 'x'), ('Rice', 2, 100, 'g'),
('Spaghetti', 3, 100, 'g'), ('Beef', 3, 200, 'g'), ('Tomato', 3, 3, 'x'), ('Cheese', 3, 20, 'g'),
('Eggs', 4, 2, 'x'), ('Bacon Strips', 4, 4, 'x'), ('Hollandaise Sauce', 4, 0.5, 'jar'),
('Lentils', 5, 100, 'g'), ('Potato', 5, 2, 'x'), ('Carrot', 5, 4, 'x'),
('Chicken Breast', 6, 4, 'x'), ('Soy Sauce', 6, 6, 'tsp'), ('Rice', 6, 100, 'g'),
('Beef', 7, 250, 'g'), ('Tomato', 7, 5, 'x'), ('Kidney Beans', 7, 50, 'g'),
('Bacon Strips', 8, 5, 'x'), ('Bread', 8, 2, 'x'), ('Butter', 8, 10, 'g'),
('Potato', 9, 4, 'x'), ('Cauliflower', 9, 2, 'x'),
('Beef', 10, 200, 'g'), ('Tomato', 10, 4, 'x'), ('Onion', 10, 2, 'x'),
('Tofu', 11, 75, 'g'), ('Miso Paste', 11, 3, 'tsp'), ('Seaweed', 11, 1, 'x'),
('Pizza Base', 12, 1, 'x'), ('Tomato', 12, 3, 'x'), ('Cheese', 12, 50, 'g'),
('Paneer', 13, 200, 'g'), ('Tomato', 13, 3, 'x'), ('Garam Masala', 14, 3, 'tsp'), ('Chilli Powder', 14, 2, 'tsp'),
('Chicken Breast', 14, 4, 'x'), ('Garam Masala', 14, 2, 'tsp'), ('Cumin', 14, 1, 'tsp'),
('Chickpeas', 15, 200, 'g'), ('Tomato', 15, 3, 'x'), ('Cumin', 15, 1, 'tsp'), ('Turmeric', 15, 1, 'tsp'),
('Beef', 16, 250, 'g'), ('Mushrooms', 16, 50, 'g'), ('Mustard', 16, 3, 'tsp'), ('Paprika', 16, 2, 'tsp');
