var express = require('express');
var router = express.Router();

router.get('/recipes/:id', getRecipe);
router.get('/recipes', getAllRecipes);

function getRecipe(req, res, next) {
  var recipeId = parseInt(req.params.id);
  res.send('GET RECIPE: ' + recipeId);
}

function getAllRecipes(req, res, next) {
  res.send('GET ALL RECIPES');
}

module.exports = router;
