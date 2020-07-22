#!/usr/bin/env zsh

echo '<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" type="text/css" href="../scss/styles.css">
  <title>'${APPNAME}'</title>
</head>
<body>
  
<script src="../js/app.js" type="module"></script>
</body>
</html>' > index.html
