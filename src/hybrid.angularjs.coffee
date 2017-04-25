import 'ionic'

import { downgradeComponent } from '@angular/upgrade/bundles/upgrade-static.umd'

import { HeroDetailComponent } from 'hero-detail.component'

angular.module 'ng1app', []
.component 'ng1thing',
    template: '<div style="border: 5px solid green">angular 1 component content here <ng2thing>innerng2thing</ng2thing></div>'
    controller: class
        constructor: ->
.directive 'ng2thing', downgradeComponent
    component: HeroDetailComponent
.service 'heroslist', class
    constructor: ->
        @name = 'foo'
        @password = undefined
