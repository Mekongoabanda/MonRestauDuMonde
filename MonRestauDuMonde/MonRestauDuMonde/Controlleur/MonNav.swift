//
//  MonNav.swift
//  MonRestauDuMonde
//
//  Created by user159565 on 4/24/20.
//  Copyright © 2020 user159565. All rights reserved.
//

import UIKit

class MonNav: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //Couleur de notre tabBar
        navigationBar.barTintColor = VERT_WEM
        //couleur des icône de la tabBar
        navigationBar.tintColor = OR
        //
        navigationBar.titleTextAttributes = [.font: FONT_DE_BASE as? Any, .foregroundColor: GRIS_TRES_CLAIR]

       
    }


}
