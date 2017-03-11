var express = require('express');
var router = express.Router();
var db = require('../queries/recipes');

router.get('/recipes/:id', db.getRecipe);
router.get('/recipes', db.getAllRecipes);

router.get('*', function(req, res, next){
  res.status(404).send('Route Not Found. Valid Routes - /recipes, /recipes:id');
});

module.exports = router;
