//
//  Car.swift
//  myGarage
//
//  Created by Marcos Esteve on 22/1/18.
//  Copyright © 2018 Marcos Esteve. All rights reserved.
//

import Foundation
import UIKit
class Car: NSObject {
    var cv : Int!
    var nombre : String!
    var marca : String!
    var imagen : UIImage?
    override init(){
        self.cv = 0
        self.nombre = "NADA"
        self.marca = "NADA"
    }
    init(cv : Int, nombre : String, marca : String, imagen : UIImage) {
        self.cv = cv
        self.nombre = nombre
        self.marca = marca
        self.imagen = imagen
    }
    override var description: String{
        return "El coche \(self.nombre) de la marca \(self.marca) tiene \(cv) caballos"
    }
}


