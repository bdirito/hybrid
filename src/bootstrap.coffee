import 'zone.js'
import 'reflect-metadata'

import { platformBrowserDynamic } from '@angular/platform-browser-dynamic'
import { UpgradeModule } from '@angular/upgrade/bundles/upgrade-static.umd'

import 'hybrid.angularjs' # angular1 stuff

import { AppModule } from 'app.module'


platformBrowserDynamic().bootstrapModule AppModule
.then (platformRef) ->
    upgrade = platformRef.injector.get UpgradeModule
    upgrade.bootstrap document.body, ['ng1app'],
        strictDi: true
