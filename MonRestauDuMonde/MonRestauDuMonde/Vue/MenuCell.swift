//
//  MenuCell.swift
//  MonRestauDuMonde
//
//  Created by user159565 on 4/24/20.
//  Copyright © 2020 user159565. All rights reserved.
//

import UIKit

class MenuCell: UICollectionViewCell {
    
    @IBOutlet weak var imageDuMenu: UIImageView!
    @IBOutlet weak var nomDuMenu: UILabel!
    @IBOutlet weak var Vue: UIView!
    
    var menu: Menu!
    
    func miseEnPlace(menu: Menu){
        
        self.menu = menu
        //forme de notre vue
        Vue.layer.cornerRadius = 10
        Vue.layer.borderColor = NOIR.cgColor
        Vue.layer.borderWidth = 1
        
        imageDuMenu.image = self.menu.image
        //l'image déborde
        imageDuMenu.contentMode = .scaleAspectFill
        //On prend tote l'image possible centré, les parties qui n'entrent pas seront masqué sous la vue
        imageDuMenu.clipsToBounds = true
        imageDuMenu.layer.cornerRadius = imageDuMenu.frame.width / 2
        imageDuMenu.layer.borderColor = GRIS_TRES_CLAIR.cgColor
        
        nomDuMenu.text = "Menu " + self.menu.pays
        nomDuMenu.textColor = GRIS_TRES_FONCE
        nomDuMenu.font = FONT_DE_BASE
        //Si le texte est trop grand pour rentrer il sera réduit
        nomDuMenu.adjustsFontSizeToFitWidth = true
        nomDuMenu.textAlignment = .center
    }
}
