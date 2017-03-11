var express = require('express');
var router = express.Router();
var db = require('../queries/recipes');

router.get('/recipes/:id', db.getRecipe);
router.get('/recipes', db.getAllRecipes);

module.exports = router;
