gulpCoffee = require 'gulp-coffee'
gulpRename = require 'gulp-rename'

gulp = require 'gulp'
settings = require './settings'

transpileFn = (options = settings.coffee.options) ->
    gulpCoffee options

gulp.task 'coffee',  ->
    gulp.src settings.files.coffee, { base: '.' }
        .pipe transpileFn()
        .pipe gulpRename
            extname: '.js6'
        .pipe gulp.dest '.'


module.exports = transpileFn
