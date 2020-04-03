//
//  membersocietCVC.swift
//  Fogsi iOS
//
//  Created by Dayal ND on 03/04/20.
//  Copyright © 2020 Dayal ND. All rights reserved.
//

import UIKit



class membersocietCVC: UICollectionViewController,UICollectionViewDelegateFlowLayout {

@IBOutlet var memberCVC: UICollectionView!
    
private let spacing:CGFloat = 18.0
var namearray = [["name":"Office Bearers 2020","image":"fogsi_2020"],["name":"Office Bearers Responsibilities","image":"fogsi_2020"],["name":"Past Office Bearers of FOGSI","image":"fogsi_2020"]
     ]
    override func viewDidLoad() {
        super.viewDidLoad()
    memberCVC.dataSource = self
    memberCVC.delegate = self

    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return namearray.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "memberCVCell", for: indexPath) as! memberCVCell
    
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
        
        if let collection = self.memberCVC{
            let width = (collection.bounds.width - totalSpacing)/numberOfItemsPerRow
        return CGSize(width: width - 20, height: width - 20)
        }else{
            return CGSize(width: 0, height: 0)
        }
        
    }

    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if indexPath.row == 0 {
            performSegue(withIdentifier: "obearers2020", sender: self)
        }
        if indexPath.row == 1 {
            performSegue(withIdentifier: "respon", sender: self)
        }
        if indexPath.row == 2 {
            performSegue(withIdentifier: "past", sender: self)
        }

        
    }
    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
