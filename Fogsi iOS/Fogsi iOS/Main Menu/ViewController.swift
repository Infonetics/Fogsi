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
    var selecteddictionary:[String:String]?
    var whatsnewweb = "https://www.fogsi.org/category/whats-new/"
    var namearray = [["name":"About FOGSI","image":"about_fogsi"],["name":"Fogsi 2020","image":"fogsi_2020"],["name":"Office Bearers","image":"office_bearers"],["name":"Committees","image":"committees"],["name":"Member Societies","image":"member_societies"],["name":"Prizes and Awards","image":"prizes_and_awards"],["name":"Training Program","image":"training_program"],["name":"What's New","image":"whats_new"],["name":"GCPR","image":"gcpr"],["name":"Resources","image":"resources"],["name":"News","image":"news"],["name":"Videos","image":"videos"],["name":"Photo Gallery","image":"photo_gallery"],["name":"Archives","image":"archives"],["name":"Fogsi Focus","image":"fogsi_focus"],["name":"Newsletter","image":"newsletter"],["name":"Contact Us","image":"contact_us"]
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
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if indexPath.row == 0 {
        performSegue(withIdentifier: "first", sender: self)
        }
        if indexPath.row == 1 {
        performSegue(withIdentifier: "fogsi2020", sender: self)
        }
        if indexPath.row == 2 {
        performSegue(withIdentifier: "offbear", sender: self)
        }
        if indexPath.row == 3 {
        performSegue(withIdentifier: "commi", sender: self)
        }
        if indexPath.row == 4 {
        performSegue(withIdentifier: "memberso", sender: self)
        }
        if indexPath.row == 5 {
        performSegue(withIdentifier: "prizandawa", sender: self)
        }
        if indexPath.row == 6 {
        performSegue(withIdentifier: "trainingbase", sender: self)
        }
        if indexPath.row == 7 {
        performSegue(withIdentifier: "whatsnew", sender: self)
        }
        if indexPath.row == 8 {
        performSegue(withIdentifier: "offbear", sender: self)
        }
        if indexPath.row == 9 {
        performSegue(withIdentifier: "offbear", sender: self)
        }
        if indexPath.row == 10 {
        performSegue(withIdentifier: "offbear", sender: self)
        }
        if indexPath.row == 11 {
        performSegue(withIdentifier: "offbear", sender: self)
        }
        if indexPath.row == 12 {
        performSegue(withIdentifier: "offbear", sender: self)
        }
        if indexPath.row == 13 {
        performSegue(withIdentifier: "offbear", sender: self)
        }
        if indexPath.row == 14 {
        performSegue(withIdentifier: "offbear", sender: self)
        }
        if indexPath.row == 15 {
        performSegue(withIdentifier: "newsletter", sender: self)
        }
        if indexPath.row == 16 {
        performSegue(withIdentifier: "contactus", sender: self)
        }
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      
         if segue.identifier == "whatsnew"{
            let link = segue.destination as! webviewTrainingVC
            link.selectedwebsite = whatsnewweb
              
    }
    
    }
    
    
}

