//
//  CollectionViewController1.swift
//  Fogsi iOS
//
//  Created by Dayal ND on 27/03/20.
//  Copyright © 2020 Dayal ND. All rights reserved.
//

import UIKit



class CollectionViewController1: UICollectionViewController,UICollectionViewDelegateFlowLayout {
    @IBOutlet var collectionview1: UICollectionView!
    private let spacing:CGFloat = 18.0
    var selectedweb:String?
    var namearray = [["name":"FOGSI Profile","image":"fogsi_2020"],["name":"FOGSI Mission Vision","image":"fogsi_2020"],["name":"Code of Conduct Ethics","image":"fogsi_2020"],["name":"Annual Report","image":"fogsi_2020"],["name":"Administrative Guidelines","image":"fogsi_2020"],["name":"Constitution 2014","image":"fogsi_2020"],["name":"FOGSI Organogram","image":"fogsi_2020"]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionview1.dataSource = self
        collectionview1.delegate = self
        self.navigationItem.title = "About Fogsi"

    }

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
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell1", for: indexPath) as! CollectionViewCell1
        cell.layer.cornerRadius = 10
        let dict = namearray[indexPath.row]
        let img = dict["image"]!
        cell.label01.text = dict["name"]
        cell.image01.image = UIImage.init(named: img )
    
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let numberOfItemsPerRow:CGFloat = 2
        let spacingBetweenCells:CGFloat = 2
        
        let totalSpacing = (2 * self.spacing) + ((numberOfItemsPerRow - 1) * spacingBetweenCells) //Amount of total spacing in a row
        
        if let collection = self.collectionview1{
            let width = (collection.bounds.width - totalSpacing)/numberOfItemsPerRow
        return CGSize(width: width - 20, height: width - 20)
        }else{
            return CGSize(width: 0, height: 0)
        }
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if indexPath.row == 0 {
            performSegue(withIdentifier: "first11", sender: self)
        }
        if indexPath.row == 1 {
            performSegue(withIdentifier: "first12", sender: self)
        }
        if indexPath.row == 2 {
            selectedweb = "https://www.fogsi.org/wp-content/uploads/2015/05/pdf/code_conduct_Ethics.pdf"
            performSegue(withIdentifier: "aboutfogsinew", sender: self)
        }
        if indexPath.row == 3 {
            performSegue(withIdentifier: "first14", sender: self)
        }
        if indexPath.row == 4 {
            selectedweb = "https://www.fogsi.org/administrative-guidelines-april-2012/"
            performSegue(withIdentifier: "aboutfogsinew", sender: self)
        }
        if indexPath.row == 5 {
            selectedweb = "https://www.fogsi.org/wp-content/uploads/brochure/fogsi-constitution-2014.pdf"
            performSegue(withIdentifier: "aboutfogsinew", sender: self)
        }
        if indexPath.row == 6 {
            performSegue(withIdentifier: "organo", sender: self)
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      
         if segue.identifier == "aboutfogsinew"{
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
