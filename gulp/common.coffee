{handle}        = require './error-hendler'
module.exports  =
  gulp:           require 'gulp'
  browserify:     require 'browserify'
  babelify:       require 'babelify'
  sources:        require 'vinyl-source-stream'
  cssnano:        require 'gulp-cssnano'
  concat:         require 'gulp-concat'
  server:         require 'gulp-server-livereload'
  handle:         handle
  debug:          true
  srcDir:         '.'
  port:           3000
  buildDir:       'dist'
  mainCss:        'main.css'
  mainES6:        'main.es6'
  mainCoffee:     'main.coffee'
  bundleCss:      'bundle.css'
  bundleES6:      'bundle.es6.js'
  bundleCoffee:   'bundle.coffee.js'
  vendorDir:      'node_modules'
  cssFiles: [
    "#{@vendorDir}/bootstrap/dist/css/bootstrap.css"
    "#{@srcDir}/#{@mainCss}"
  ]