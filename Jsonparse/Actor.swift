//
//  Actor.swift
//  Jsonparse
//
//  Created by vikas srivastava on 29/06/18.
//  Copyright © 2018 vikas srivastava. All rights reserved.
//

import Foundation
class Actors:Codable {
    
    var actors:[Actor]
    init(actors:[Actor]) {
        self.actors = actors
    }
}
class Actor: Codable {
    let name:String
    let description : String
    let country : String
    let image : String
    init(name:String,description : String,country : String,image : String) {
        self.name = name
        self.description = description
        self.country = country
        self.image = image
    }
    
}
