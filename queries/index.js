var prodDb = process.env.DATABASE_URL + '?ssl=true';
var devDb = 'postgres://jamie@localhost:5432/recipe-app';
var dbHost = process.env.NODE_ENV === 'production' ? prodDb : devDb;

var options = {};
var pgp = require('pg-promise')(options);
var db = pgp(dbHost);

function getRecipe(req, res, next) {
  var recipeId = parseInt(req.params.id);

  sql = `
    SELECT
      json_build_object(
        'name', r.name,
        'cookingtime', r.cookingTime,
        'imageurl', r.imageURL,
        'ingredients', (SELECT json_agg(
          json_build_object(
            'name', i.name,
            'quantity', i.quantity,
            'quantityType', i.quantityType
          )
        ) FROM ingredients i WHERE r.recipeId = i.recipeId)
      ) json
    FROM recipes r WHERE recipeId = $1
  `;

  db.oneOrNone(sql, recipeId)
    .then(data => {
      if (data) {
        res.status(200).json(data.json);
      } else {
        res.status(404).send('Sorry, this recipe doesnt exist or may have been removed');
      }
    })
    .catch(error => {
      return next(error);
    });
}

function getAllRecipes(req, res, next) {
  db.manyOrNone('SELECT * FROM recipes')
    .then(function (data) {
      if (data.length > 0) {
        res.status(200).json(data);
      } else {
        res.status(404).send('No Recipes available.');
      }
    })
    .catch(function (err) {
      return next(err);
    });
}

module.exports = {
  getAllRecipes: getAllRecipes,
  getRecipe: getRecipe
};
