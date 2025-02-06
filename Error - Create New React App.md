# Chrome Browser

http://localhost:3000/

# Webpage Error Message

Compiled with problems:
×
ERROR in ./src/reportWebVitals.js 5:4-24
Module not found: Error: Can't resolve 'web-vitals' in 'C:\Users\cocon\Desktop\browntruck246\sandbox\my-app\src'

# Solution

[Module not found: Error: Can't resolve 'web-vitals' in 'C:\Users\cocon\Desktop\browntruck246\sandbox\my-app\src'](https://stackoverflow.com/questions/72545201/module-not-found-error-cant-resolve-web-vitals-in-app-src)

## Issue

The error "Module not found: Error: Can't resolve 'web-vitals'" is because of missing web-vitals package, make sure the web-vitals package is installed in devDependencies.

## Install web-vitals

To install the web-vitals, just run the following command in the root directory of the project and re-run the server

```
npm install --save-dev web-vitals
```

If the error is not resolved, try to delete your node_modules and package-lock.json (not package.json) files, re-run npm install
