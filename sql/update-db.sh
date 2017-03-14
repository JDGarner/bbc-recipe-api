#!/bin/bash

cat sql/ingredients.sql | heroku pg:psql
cat sql/recipes.sql | heroku pg:psql

psql recipe-app < sql/ingredients.sql
psql recipe-app < sql/recipes.sql
