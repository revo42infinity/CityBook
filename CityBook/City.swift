//
//  City.swift
//  CityBook
//
//  Created by owner on 1/30/21.
//

import Foundation
//4
import UIKit
//5

class City {
    
    var name : String
    var location : String
    var image : UIImage
    
    //6 sehirler
    init(name:String,location:String,image:UIImage) {
        self.name = name
        self.location = location
        self.image = image
    }
    
}
