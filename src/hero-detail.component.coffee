import { Component } from '@angular/core'

export class HeroDetailComponent
    @annotations = [
        new Component
            selector: 'hero-detail' # shouldnt actually matter once downgraded
            template: '<div class="x">im a ng2 component</div>'
            styles: [
                'div { border: 5px solid black; }'
            ]
    ]

    constructor: ->

    foo: ->
        'something something'
