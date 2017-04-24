gulp = require 'gulp'
gulpCache = require 'gulp-cached'
multipipe = require 'multipipe'

settings = require './settings'
transpile = require './transpile'

watchTask = ->
    gulp.src settings.files.coffee, { base: '.' }
        .pipe gulpCache 'watchCache'
        .pipe transpile()
        .pipe gulp.dest '.'

gulp.task 'watch', ->
    w = gulp.watch settings.files.coffee, watchTask
