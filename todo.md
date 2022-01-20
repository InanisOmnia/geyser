# TODO

List of things that need doing

 - WTF DO I DO WITH JS FILES??
  
scripts used by bootstrap

```
  "js": "npm-run-all js-compile js-minify",
    "js-compile": "npm-run-all --aggregate-output --parallel js-compile-*",
    "js-compile-standalone": "rollup --environment BUNDLE:false --config build/rollup.config.js --sourcemap",
    "js-compile-standalone-esm": "rollup --environment ESM:true,BUNDLE:false --config build/rollup.config.js --sourcemap",
    "js-compile-bundle": "rollup --environment BUNDLE:true --config build/rollup.config.js --sourcemap",
    "js-compile-plugins": "node build/build-plugins.js",

    "js-minify": "npm-run-all --aggregate-output --parallel js-minify-*",
    "js-minify-standalone": "terser --compress passes=2 --mangle --comments \"/^!/\" --source-map \"content=dist/js/bootstrap.js.map,includeSources,url=bootstrap.min.js.map\" --output dist/js/bootstrap.min.js dist/js/bootstrap.js",
    "js-minify-standalone-esm": "terser --compress passes=2 --mangle --comments \"/^!/\" --source-map \"content=dist/js/bootstrap.esm.js.map,includeSources,url=bootstrap.esm.min.js.map\" --output dist/js/bootstrap.esm.min.js dist/js/bootstrap.esm.js",
    "js-minify-bundle": "terser --compress passes=2 --mangle --comments \"/^!/\" --source-map \"content=dist/js/bootstrap.bundle.js.map,includeSources,url=bootstrap.bundle.min.js.map\" --output dist/js/bootstrap.bundle.min.js dist/js/bootstrap.bundle.js"
```