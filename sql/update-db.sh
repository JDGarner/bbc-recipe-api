#!/bin/bash

cat sql/database.sql | heroku pg:psql
cat sql/recipes.sql | heroku pg:psql

psql recipe-app < sql/database.sql
psql recipe-app < sql/recipes.sql
