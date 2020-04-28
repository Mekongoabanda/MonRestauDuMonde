//
//  Plat.swift
//  MonRestauDuMonde
//
//  Created by user159565 on 4/28/20.
//  Copyright © 2020 user159565. All rights reserved.
//

//-----------------   CLASSE POUR NOS PLATS   --------------------------------

import UIKit

class Plat {
    
    private var _type: Type
    private var _pays: String
    private var _desc: String
    private var _image: UIImage
    
    var type: Type {
        return _type
    }
    
    var pays: String {
        return _pays
    }
    
    var desc: String {
        return _desc
    }
    
    var image: UIImage {
        return _image
    }
    
    init(type: Type, pays: String, desc: String, image: UIImage) {
        self._type = type
        self._desc = desc
        self._pays = pays
        self._image = image
        
    }
}
