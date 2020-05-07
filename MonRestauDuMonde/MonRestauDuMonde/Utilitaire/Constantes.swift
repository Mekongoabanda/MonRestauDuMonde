//
//  Constantes.swift
//  MonRestauDuMonde
//
//  Created by user159565 on 4/23/20.
//  Copyright © 2020 user159565. All rights reserved.
//

//------- CE FICHIERS SWIFT NOUS PERMET DE DEFINIR CERTAINES COULEURS ET LES APPELER DANS DIFFERENTES CLASSES

import UIKit

let NOIR = UIColor.black
let GRIS_TRES_FONCE = UIColor(red: 30 / 255, green: 30 / 255, blue: 30 / 255, alpha: 1)
let GRIS_TRES_CLAIR = UIColor(red: 240 / 255, green: 240 / 255, blue: 240 / 255, alpha: 1)
let VERT_WEM = UIColor(hexString: "#326834")
let OR = UIColor(red: 255, green: 204, blue: 0, alpha: 1)

let FONT_DE_BASE = UIFont(name: "Chalkduster", size: 20)

//Constantes pour définir le nom des pays
let ITALIE = "Italien"
let CHINE = "CHINOIS"
let JAPON = "Japon"
let USA = "Américain"
let MEXIQUE = "Mexique"
let ESPAGNE = "Espagne"
let SUISSE = "Suisse"


//Convertir couleur hexadécimal
extension UIColor {
    convenience init(hexString: String) {
        let hex = hexString.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int = UInt64()
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        self.init(red: CGFloat(r) / 255, green: CGFloat(g) / 255, blue: CGFloat(b) / 255, alpha: CGFloat(a) / 255)
    }
}
