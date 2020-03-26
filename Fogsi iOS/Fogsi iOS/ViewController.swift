//
//  ViewController.swift
//  Fogsi iOS
//
//  Created by Dayal ND on 18/03/20.
//  Copyright © 2020 Dayal ND. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {

    @IBOutlet var collectionviewmain: UICollectionView!
    private let spacing:CGFloat = 18.0
    var namearray = [["name":"About FOGSI","image":"about_fogsi"],["name":"Fogsi 2020","image":"fogsi_2020"],["name":"Office Bearers","image":"office_bearers"],["name":"Committees","image":"committees"],["name":"Member Societies","image":"member_societies"],["name":"Prizes and Awards","image":"prizes_and_awards"],["name":"Training Program","image":"training_program"],["name":"What's New","image":"prizes_and_awards"],["name":"GCPR","image":"gcpr"],["name":"Resources","image":"resources"],["name":"News","image":"news"],["name":"Videos","image":"videos"],["name":"Photo Gallery","image":"photo_gallery"],["name":"Archives","image":"archives"],["name":"Fogsi Focus","image":"fogsi_focus"],["name":"Newsletter","image":"newsletter"],["name":"Contact Us","image":"contact_us"]
    ]
    
    override func viewDidLoad() {
        collectionviewmain.dataSource = self
        collectionviewmain.delegate = self        
        super.viewDidLoad()
        
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return namearray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        cell.layer.cornerRadius = 10
        let dict = namearray[indexPath.row]
        let img = dict["image"]!
        cell.label1.text = dict["name"]
        cell.image1.image = UIImage.init(named: img )
        
        return cell
    }
  

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let numberOfItemsPerRow:CGFloat = 2
        let spacingBetweenCells:CGFloat = 2
        
        let totalSpacing = (2 * self.spacing) + ((numberOfItemsPerRow - 1) * spacingBetweenCells) //Amount of total spacing in a row
        
        if let collection = self.collectionviewmain{
            let width = (collection.bounds.width - totalSpacing)/numberOfItemsPerRow
            
            if indexPath.row == 16 {
            return CGSize(width: (2 * (width - 20) + 25), height: width - 20 )
            }
            else{
            return CGSize(width: width - 20, height: width - 20)
            }
            
        }else{
            return CGSize(width: 0, height: 0)
        }
       
    }
    
     func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if  (kind == UICollectionView.elementKindSectionHeader) {
            let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "CollectionReusableView", for: indexPath) as! CollectionReusableView
            // Customize headerView here
            return headerView
        }
        fatalError()
    }
    
    
    

   
    
    
    
}

