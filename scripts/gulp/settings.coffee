settings =
    files:
        coffee: [ './src/**/*.coffee', '!./src/jspm_packages/' ]
        babel:  [ './src/**/*.js6',    '!./src/jspm_packages/' ]
    coffee:
        options:
            bare: true

    babel:
        options:
            presets: ['es2015']# [
            #     ['es2015', { 'modules': 'systemjs' } ]
            # ]
#            plugins: [ 'transform-es2015-modules-systemjs' ]

module.exports = settings
