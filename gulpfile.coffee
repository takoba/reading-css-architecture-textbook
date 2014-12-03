gulp =
 core: require('gulp')
 $: require('gulp-load-plugins')()

gulp.core.task 'default', ->
  console.log 'gulp!!!'

styles =
  path: [
    '**/assets/style/*.css'
    '!**/*.min.css'
  ]
  lintrules:
    'duplicate-properties': true

gulp.core.task 'styles', ->
  gulp.core.src styles.path
    .pipe gulp.$.csslint styles.lintrules
    .pipe gulp.$.minifyCss()
    .pipe gulp.$.rename suffix: '.min'
    .pipe gulp.core.dest './'

gulp.core.task 'watch', ->
  gulp.core.watch styles.path, ['styles']
