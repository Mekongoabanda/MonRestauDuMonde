//
//  MenuController.swift
//  MonRestauDuMonde
//
//  Created by user159565 on 4/23/20.
//  Copyright © 2020 user159565. All rights reserved.
//

import UIKit

class MenuController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource,
UICollectionViewDelegateFlowLayout {
    @IBOutlet weak var collectionView: UICollectionView!
    
    let cellId = "MenuCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Les menus du monde"
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
    }
    
    //Fonction qui retourne le nombre de vue que UICollectionView doit afficher
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    //Fonction qui nous retourne la vue
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as? MenuCell
        {
            cell.backgroundColor = GRIS_TRES_FONCE
            return cell
        }
        return UICollectionViewCell()
    }
    
    //Gérer la taille de chaque item
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        //moitié de la collectionView - 20
        let largeur = collectionView.frame.width / 2 - 10
        return CGSize(width: largeur, height: 200)
    }
    
    //les deux Méthodes suivantes qui permettent de supprimer les margin, donc les espaces entre chaque cellule
    
    //Espace minimum par section (comme une marginBottom)
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 25
        
    }
    
    //Espace entre les items d'une meme ligne
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }

}
