import { NgModule } from '@angular/core'
import { BrowserModule } from '@angular/platform-browser'
import { UpgradeModule } from '@angular/upgrade/bundles/upgrade-static.umd'

import { HeroDetailComponent } from 'hero-detail.component'

export class AppModule
    # this formulation means that we can use HeroDetailComponent as ng2thing
    # but not hero-detail.
    @annotations = [
        new NgModule
            imports: [
                BrowserModule
                UpgradeModule
            ]
            declarations: [
                HeroDetailComponent
            ]
            # remove for outer 2
            entryComponents: [
                HeroDetailComponent
            ]
            # add for outer 2
            # bootstrap: [
            #     HeroDetailComponent
            # ]
    ]

    # remove for outer 2 (bootstrap instead)
    ngDoBootstrap: ->
