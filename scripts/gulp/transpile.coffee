gulp = require 'gulp'

multipipe = require 'multipipe'

coffee = require './coffee'
babel = require './babel'

settings = require './settings'

transpileFn = ->
    multipipe coffee(),
        babel()

gulp.task 'transpile', ->
    gulp.src settings.files.coffee, { base: '.' }
        .pipe transpileFn()
        .pipe gulp.dest '.'

module.exports = transpileFn
