var express = require('express');
var router = express.Router();
var queries = require('../queries');

router.get('/recipes/:id', queries.getRecipe);
router.get('/recipes', queries.getAllRecipes);

router.get('*', function(req, res, next){
  res.status(404).send('Route Not Found. Valid Routes - /recipes, /recipes:id');
});

module.exports = router;
