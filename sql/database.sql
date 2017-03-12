DROP TABLE recipes;
CREATE TABLE recipes (
  id serial primary key,
  name text,
  cookingTime text,
  mainIngredients text,
  imageURL text
);
