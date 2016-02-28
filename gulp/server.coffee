{gulp, srcDir, server, port} = require './common'

gulp.task 'server', ->
  return gulp.src(srcDir)
    .pipe server
      port: port
      open: true
      log: 'debug'
      livereload:
        port: 35729
        clientConsole: true