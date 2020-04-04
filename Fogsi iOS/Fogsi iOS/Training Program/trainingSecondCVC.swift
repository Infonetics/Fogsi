//
//  trainingSecondCVC.swift
//  Fogsi iOS
//
//  Created by Dayal ND on 04/04/20.
//  Copyright © 2020 Dayal ND. All rights reserved.
//

import UIKit



class trainingSecondCVC: UICollectionViewController,UICollectionViewDelegateFlowLayout {

    @IBOutlet var secondcollection: UICollectionView!
    private let spacing:CGFloat = 18.0
    var dict1:[String:Any]?
    var arrayofdata:[String]?
    var arrayofweb:[String]?
    var selectedweb:String?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
    secondcollection.dataSource = self
    secondcollection.delegate = self
        
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
        return arrayofdata!.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "trainingSecondCell", for: indexPath) as! trainingSecondCell
    
        cell.layer.cornerRadius = 10
        let img = dict1!["image"]!
        cell.label1.text = arrayofdata![indexPath.row]
        cell.image1.image = UIImage.init(named: img as! String )
    
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let numberOfItemsPerRow:CGFloat = 2
        let spacingBetweenCells:CGFloat = 2
        
        let totalSpacing = (2 * self.spacing) + ((numberOfItemsPerRow - 1) * spacingBetweenCells) //Amount of total spacing in a row
        
        if let collection = self.secondcollection{
            let width = (collection.bounds.width - totalSpacing)/numberOfItemsPerRow
        return CGSize(width: width - 20, height: width - 20)
        }else{
            return CGSize(width: 0, height: 0)
        }
        
    }
    
       override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
      
        if arrayofdata!.contains("Syllabus") {
            if indexPath.row == 0{
            performSegue(withIdentifier: "syalle", sender: self)
            }else{
            selectedweb = arrayofweb![indexPath.row]
            performSegue(withIdentifier: "thirwebjj", sender: self)
            }
        } else {
           selectedweb = arrayofweb![indexPath.row]
           performSegue(withIdentifier: "thirwebjj", sender: self)
        }
        

         }


       override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
       if segue.identifier == "thirwebjj"{
          let link = segue.destination as! webviewTrainingVC
          link.selectedwebsite = selectedweb
            
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
