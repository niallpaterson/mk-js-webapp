# mk-js-webapp

Zsh script for generating javascript web application templates. Initialises a git repository, installs jest with babel-jest, and installs eslint using airbnb's guidelines. Also installs commit linting following the conventional commits guideline, and creates a settings.yml file used to autopopulate github repository labels.

## Installation

To run the script you must have yarn installed. If not, install with homebrew:

```
brew install yarn
```

The script folder should be placed in the directory that you desire templates to be built into.

If you want to use the github label settings, you must enable the github settings action:

> [https://github.com/apps/settings/installations/new](https://github.com/apps/settings/installations/new)

## Template generation

To generate a template navigate into mk-js-webapp and run:

```
./mk-js-webapp.zsh
```

You will be prompted for the name of your application. Input the name, hit enter, and grab a coffee while the scripts run ☕️.

The structure of applications build by the script is:

```
root
  |-html
  | |-index.html
  |-js
    |-app.js
  |-scss
  | |-_partials
  | |-styles.scss
```

The script also creates a directory named buildTests with the following structure:

```
buildTests
  |-testJest.js
  |-testJest.test.js
  |-testLint.js
```

The testJest.test.js file tests an innocuous function found in testJest.js. The test is run at the end of installation. If the test passes, jest has properly installed.

The testLint.js file contains a function that does not comply with the installed eslint guidelines. Eslint is run on this file at the end of installation. Esint has properly installed if it throws:

```
1:29  error  Unexpected block statement surrounding arrow body; move the returned value immediately after the `=>`  arrow-body-style
```

It is reccomended that you manually check eslint is underlinning this error in testLint.js to ensure compliance with your IDE's eslint plugin.

When you have verified the build was succesful you can delete the buildTests directory.
