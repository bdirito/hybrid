gulp = require 'gulp'
del = require 'del'

gulp.task 'clean', ->
    del [
        'src/**/*.js',
        'src/**/*.js6',
        '!src/jspm_packages/**'
        '!src/jspm.config.js'
        ]
