//
//  main.swift
//  AdvancedSwiftProject
//
//  Created by sherry on 03/04/2021.
//

import Foundation

let classJames = MusicianClass(nameInput: "James", ageInput: 50, InstrumentInput: "Guitar")

// print(classJames.age)

var structJames = MusciansStuct(name: "Jameas", age: 50, instrument: "Guitar")

print(structJames.age)

structJames.age = 51

print(structJames.age)

structJames.age = 52
print(structJames.age)


var copyofstructJames = structJames

print (copyofstructJames.age)

copyofstructJames.age = 55
print(copyofstructJames.age)
 
print (structJames.age)
