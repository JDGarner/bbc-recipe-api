var prodDb = process.env.DATABASE_URL + '?ssl=true';
var devDb = 'postgres://jamie@localhost:5432/recipe-app';
var dbHost = process.env.NODE_ENV === 'production' ? prodDb : devDb;

var options = {};
var pgp = require('pg-promise')(options);
var db = pgp(dbHost);

function getRecipe(req, res, next) {
  var recipeId = parseInt(req.params.id);

  db.task(buildTree)
    .then(data=> {
      res.status(200).json(data);
    })
    .catch(error=> {
      return next(error);
    });

  function buildTree(t) {
    return t.map('SELECT * FROM recipes WHERE id = $1', recipeId, recipe => {
      return t.any('SELECT * FROM ingredients WHERE recipeId = $1', recipe.recipeid)
        .then(ingredients => {
          recipe.ingredients = ingredients;
          return recipe;
        });
    }).then(t.batch);
  }
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
