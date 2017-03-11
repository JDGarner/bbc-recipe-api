DELETE FROM recipes;
INSERT INTO recipes
(name, cookingTime, mainIngredients, imageURL)
VALUES
('Lemon Chicken', '30 Minutes', ARRAY['Chicken', 'Lemon', 'Thyme'], 'lemon-chicken.png'),
('Beef Stroganoff', '30 Minutes', ARRAY['Beef', 'Mustard', 'Mushrooms'], 'beef-stroganoff.png');
