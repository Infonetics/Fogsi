//
//  organoCollectionView.swift
//  Fogsi iOS
//
//  Created by Dayal ND on 30/03/20.
//  Copyright © 2020 Dayal ND. All rights reserved.
//

import UIKit



class organoCollectionView: UICollectionViewController, UICollectionViewDelegateFlowLayout  {
    
    
@IBOutlet var organocollectionView: UICollectionView!
private let spacing:CGFloat = 18.0
    
var namearray = [["name":"Ms. Sangeeta Mestry","image":"sangeeta","desc":"OFFICE SUPERINTENDENT"],["name":"Mrs. Kanchan Pathare","image":"kanchan-pathare","desc":"ASST. OFFICE SUPERINTENDENT & HR"],["name":"Mrs. Varsha Anand Sawal","image":"varsha","desc":"SENIOR OFFICE ADMIN, FOGSI SCHEMES"],["name":"Mrs. Neelima More","image":"neelima","desc":"SENIOR OFFICE ADMIN, ICOG"],["name":"Mrs. Hema Bhatkar","image":"hema","desc":"SENIOR ACCOUNTS"],["name":"Mrs. Maria Pereira","image":"maria","desc":"SENIOR OFFICE ADMIN - JOURNAL"],["name":"Mrs. Arati Mhatre","image":"aarti","desc":"JUNIOR OFFICE ADMIN- JOURNAL"],["name":"Mrs. Diptee Walkar","image":"diptee","desc":"JUNIOR ACCOUNTS"],["name":"Mrs. Poonam Singh Lohat","image":"poonam","desc":"TRAINING"],["name":"Mrs. Shubhada Redkar","image":"shubhada-redkar","desc":"OFFICE ADMINISTRATIVE STAFF"],["name":"Ms. Poonam Mendhare","image":"poonam-mendhare","desc":"RECEPTIONIST / GENERAL STAFF"],["name":"Mr. Prakash Gurav","image":"Prakash","desc":"SR. OFFICE ASSISTANT"],["name":"Mr. Prakash Bomble","image":"Prakash-2","desc":"JR. OFFICE ASSISTANT"],["name":"Mr. Satyawan Gurav","image":"Satyawan","desc":"SR. OFFICE ATTENDANT"],["name":"Mr. Suryakant Rane","image":"Suryakant","desc":"JR. OFFICE ATTENDANT"],["name":"Mr. Prasad Karkhanis","image":"Prasad","desc":"JR. OFFICE ATTENDANT"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    organocollectionView.dataSource = self
    organocollectionView.delegate = self


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
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "organoCell", for: indexPath) as! organoCell
    
        let dict = namearray[indexPath.row]
        let img = dict["image"]!
        cell.nameLabel.text = dict["name"]
        cell.imageView.image = UIImage.init(named: img )
        cell.designLabel.text = dict["desc"]
        
    
        return cell
    }

    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let numberOfItemsPerRow:CGFloat = 2
        let spacingBetweenCells:CGFloat = 2
        
        let totalSpacing = (2 * self.spacing) + ((numberOfItemsPerRow - 1) * spacingBetweenCells) //Amount of total spacing in a row
        
        if let collection = self.organocollectionView{
            let width = (collection.bounds.width - totalSpacing)/numberOfItemsPerRow
        print(width)
            return CGSize(width: width , height: width + 121.5)
        }else{
            return CGSize(width: 0, height: 0)
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
