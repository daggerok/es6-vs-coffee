{gulp, cssFiles, bundleCss, concat, buildDir, livereload} = require './common'

gulp.task 'css', ->
  return gulp.src(cssFiles)
    .pipe(concat bundleCss)
    .pipe(gulp.dest buildDir)
    .pipe(do livereload)