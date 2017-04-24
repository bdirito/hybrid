gulp = require 'gulp'
gulpBabel = require 'gulp-babel'

settings = require './settings'

transpileFn = (options = settings.babel.options) ->
    console.log options
    gulpBabel options

gulp.task 'babel', ->
    gulp.src settings.files.babel, { base: '.' }
        .pipe transpileFn()
        .pipe gulp.dest '.'

module.exports = transpileFn
