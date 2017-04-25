import { Component } from '@angular/core'
import { FormBuilder } from '@angular/forms'
import 'rxjs/add/operator/debounceTime'

export class Address
    constructor: ->
        @street = ''
        @city = ''
        @state = ''
        @zip = ''

export class HeroDetailComponent
    @annotations = [
        new Component
            selector: 'hero-detail' # shouldnt actually matter once downgraded
            template: """
<form [formGroup]="heroForm" novalidate class='abc'>
    <div>name<input formControlName="name"></div>
    <div>password<input formControlName="password"></div>
    <button (click)="onSave()">save</button>
    <div>{{ herolist | json }}</div>
</form>
"""
            styles: [
                'form { border: 5px solid black; }'
            ]
    ]
    @parameters = [
        [ FormBuilder ]#, new Inject 'HeroList' ]
        'HeroList'
    ]

    constructor: (@fb, @herolist) ->
        @createForm()

    createForm: =>
        @heroForm = @fb.group @herolist
        @heroForm.valueChanges.debounceTime(400).subscribe (value) =>
            console.log 'x'
            @herolist = value


    onSave: =>
        debugger
