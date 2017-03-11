var options = {};
var pgp = require('pg-promise')(options);
var db = pgp('postgres://jamie@localhost:5432/recipe-app');

function getRecipe(req, res, next) {
  var recipeId = parseInt(req.params.id);
  db.one('SELECT * FROM recipes WHERE id = $1', recipeId)
    .then(function (data) {
      res.status(200)
        .json(data);
    })
    .catch(function (err) {
      return next(err);
    });
}

function getAllRecipes(req, res, next) {
  db.any('SELECT * FROM recipes')
    .then(function (data) {
      res.status(200)
        .json(data);
    })
    .catch(function (err) {
      return next(err);
    });
}

module.exports = {
  getAllRecipes: getAllRecipes,
  getRecipe: getRecipe
};
