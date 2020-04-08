//
//  prizesandawardsCVC.swift
//  Fogsi iOS
//
//  Created by Dayal ND on 03/04/20.
//  Copyright © 2020 Dayal ND. All rights reserved.
//

import UIKit



class prizesandawardsCVC: UICollectionViewController,UICollectionViewDelegateFlowLayout{

    @IBOutlet var prizesandawardCVC: UICollectionView!
    private let spacing:CGFloat = 18.0
    var selecteddictionary:[String:String]?
    var namearray = [["name":"Result Individual Awards 2019","image":"fogsi_2020","desc":"https://www.fogsi.org/wp-content/uploads/awards/result/result-individual-awards-2019.pdf"],["name":"Result Society Awards 2019","image":"fogsi_2020","desc":"https://www.fogsi.org/wp-content/uploads/awards/result/result-society-awards-updated-2019.pdf"],["name":"Eligibility Society Awards","image":"fogsi_2020","desc":""],["name":"Eligibility Individual Awards","image":"fogsi_2020","desc":""],["name":"FOGSI Lifetime Awardees","image":"fogsi_2020","desc":""],["name":"Scientific Papers Prizes 2020","image":"fogsi_2020","desc":"https://www.fogsi.org/wp-content/uploads/awards/fogsi-awardees-2020.pdf"]
         ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    prizesandawardCVC.dataSource = self
    prizesandawardCVC.delegate = self
    self.navigationItem.title = "Prizes and Awards"
        
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
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "prizesandawardsCell", for: indexPath) as! prizesandawardsCell
        
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
        
        if let collection = self.prizesandawardCVC{
            let width = (collection.bounds.width - totalSpacing)/numberOfItemsPerRow
        return CGSize(width: width - 20, height: width - 20)
        }else{
            return CGSize(width: 0, height: 0)
        }
        
    }

    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    
        selecteddictionary = namearray[indexPath.row]
       
        if indexPath.row == 0 {
            performSegue(withIdentifier: "webv999", sender: self)
        }
        if indexPath.row == 1 {
            performSegue(withIdentifier: "webv999", sender: self)
        }
        if indexPath.row == 2 {
            performSegue(withIdentifier: "elsoaw", sender: self)
        }
        if indexPath.row == 3 {
            performSegue(withIdentifier: "indiaaward", sender: self)
        }
        if indexPath.row == 4 {
            performSegue(withIdentifier: "life999", sender: self)
        }
        if indexPath.row == 5 {
            performSegue(withIdentifier: "webv999", sender: self)
        }
  
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "webv999" {
            let link = segue.destination as! awwardWebViewVC
            link.dict1 = selecteddictionary
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
