{gulp, browserify, srcDir, mainCoffee, bundleCoffee, debug, sources, handle, buildDir} = require './common'

gulp.task 'coffee', ->
  return browserify
      debug: debug
      extensions: ['.coffee']
    .add("#{srcDir}/#{mainCoffee}")
    .transform "coffeeify",
      sourceMaps: debug,
      bare: false
    .bundle()
    .on('error', handle)
    .pipe(sources bundleCoffee)
    .pipe(gulp.dest buildDir)