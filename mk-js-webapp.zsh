#!/usr/bin/env zsh

set -k 

read -- 'APPNAME?Enter name of app: (my-app) '
APPNAME=${APPNAME:-'my-app'}

mkdir ${APPNAME}
cd ${APPNAME}

git init

touch '.gitignore'
. ../templates/gitignore.zsh

touch 'README.md'

touch 'package.json'
. ../templates/package.json.zsh

mkdir html
cd html
touch 'index.html'
. ../../templates/html.zsh
cd ..

mkdir js
cd js
touch 'app.js'
touch 'app.test.js'
cd ..
. ../packages/jest.zsh

mkdir scss
cd ./scss
. ../../templates/scss.zsh
cd ..

mkdir .github
cd ./.github
touch 'settings.yml'
. ../../templates/labels.zsh
cd ..

touch 'babel.config.js'
. ../templates/babel-config.zsh

touch '.eslintrc.js'
. ../templates/eslint-config.zsh
. ../packages/eslint.zsh

. ../templates/commitlint-config.zsh
. ../packages/commitlint.zsh

mkdir 'buildTests'
cd 'buildTests'
touch testJest.js
. ../../templates/test-jest.zsh
touch testJest.test.js
. ../../templates/test-jest-test.zsh
touch testLint.js
. ../../templates/test-lint.zsh
cd ..
yarn test buildTests/testJest.test.js
eslint buildTests/testLint.js

cd ../..
pwd
mv mk-js-webapp/${APPNAME} $(pwd)

echo '👍 Good to go'

read -- 'ANSWER?Open in Visual Studio Code? (Y/n)'
ANSWER=${ANSWER:-'y'}

if ([[ $ANSWER == 'y' ]]) {
  cd ${APPNAME}
  code .
}

exit
