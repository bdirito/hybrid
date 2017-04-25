import 'zone.js'
import 'reflect-metadata'

import 'ionic'

import { platformBrowserDynamic } from '@angular/platform-browser-dynamic'


import { AppModule } from 'app.module'
import { HeroDetailComponent } from 'hero-detail.component'

import { UpgradeModule, downgradeComponent } from '@angular/upgrade/bundles/upgrade-static.umd'

angular.module 'ng1app', []
.component 'ng1thing',
    template: '<div style="border: 5px solid green">angular 1 component content here <ng2thing>innerng2thing</ng2thing></div>'
    controller: class
        constructor: ->
.directive 'ng2thing', downgradeComponent
    component: HeroDetailComponent

platformBrowserDynamic().bootstrapModule AppModule
.then (platformRef) ->
    upgrade = platformRef.injector.get UpgradeModule
    upgrade.bootstrap document.body, ['ng1app'],
        strictDi: true
