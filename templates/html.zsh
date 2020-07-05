#!/usr/bin/env zsh

echo '<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="../scss/.styles.css"></script>
  <title>'${APPNAME}'</title>
</head>
<body>
  
<script src="../js/app.js" type="module"></script>
</body>
</html>' > index.html
