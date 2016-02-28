{gulp, cssFiles, bundleCss, concat, buildDir} = require './common'

gulp.task 'css', ->
  return gulp.src(cssFiles)
    .pipe(concat bundleCss)
    .pipe(gulp.dest buildDir)