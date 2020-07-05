#!/usr/bin/env zsh

echo '{
  "name": "'${APPNAME}'",
  "version": "1.0.0",
  "description": "",
  "main": "js/app.js",
  "repository": "",
  "author": "",
  "license": "MIT",
  "private": false,
  "scripts": {
    "test": "jest"
  }
}' > package.json
