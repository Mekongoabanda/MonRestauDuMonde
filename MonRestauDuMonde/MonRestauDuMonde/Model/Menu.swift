//
//  Menu.swift
//  MonRestauDuMonde
//
//  Created by user159565 on 4/28/20.
//  Copyright © 2020 user159565. All rights reserved.
//

import UIKit

class Menu {
    
    private var _pays: String
    private var _image: UIImage
    private var _plats: [Plat]
    
    var pays : String {
        return _pays
    }
    
    var image : UIImage {
        return _image
    }
    
    var plats : [Plat] {
        return _plats
    }
    
    init(pays: String, image: UIImage) {
        self._image = image
        self._pays = pays
        self._plats = [Plat]()
    }
}
