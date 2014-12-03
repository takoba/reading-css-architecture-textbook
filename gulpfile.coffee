gulp =
 core: require('gulp')
 $: require('gulp-load-plugins')()

gulp.core.task 'default', ->
  console.log 'gulp!!!'
