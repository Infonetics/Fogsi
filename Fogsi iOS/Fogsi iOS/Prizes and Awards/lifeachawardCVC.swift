//
//  lifeachawardCVC.swift
//  Fogsi iOS
//
//  Created by Dayal ND on 04/04/20.
//  Copyright © 2020 Dayal ND. All rights reserved.
//

import UIKit



class lifeachawardCVC: UICollectionViewController,UICollectionViewDelegateFlowLayout  {

    @IBOutlet var lifeachawardCVC: UICollectionView!
    private let spacing:CGFloat = 18.0
    var namearray = [["name":"Dr. Usha B. Saraiya","image":"dr-usha-saraiya","desc":"2020\n63rd AICOG, Lucknow"],["name":"Dr. Sadhana Desai","image":"dr-sadhana-desai","desc":"2020\n63rd AICOG, Lucknow"],["name":"Dr. Alokendu Chatterjee","image":"dr-alokendu-chatterjee","desc":"2019\n62nd AICOG, Bengaluru"],["name":"Dr. Kamini Rao","image":"dr-kamini-rao","desc":"2019\n62nd AICOG, Bengaluru"],["name":"Dr. R. P. Soonawala","image":"dr-rp-sonawala","desc":"2018\n61st AICOG, Odisha"],["name":"Dr. R. Rajan","image":"dr-r-rajan","desc":"2018\n61st AICOG, Odisha"],["name":"Dr. Kamal Buckshee","image":"dr-kamal-buckshee","desc":"2017\n60th AICOG, Ahmedabad"],["name":"Dr. C. N. Purandare","image":"dr-c-n-purandare","desc":"2017\n60th AICOG, Ahmedabad"],["name":"Dr. Usha Krishna","image":"dr-usha-krishna","desc":"2016\n59th AICOG, Agra"],["name":"Dr. Shirish Sheth","image":"dr-shirish-sheth","desc":"2015\n58th AICOG, Chennai"],["name":"Dr. Shirish N. Daftary","image":"dr-shirish-n-daftary","desc":"2014\n57th AICOG, Patna"],["name":"Dr. Rohit Bhatt","image":"dr-rohit-bhatt","desc":"2013\n56th AICOG, Mumbai"],["name":"Dr. Mahendra Parikh","image":"dr-mn-parikh","desc":"2012\n55th AICOG, Varanasi"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    lifeachawardCVC.dataSource = self
    lifeachawardCVC.delegate = self

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
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "lifeachawardCell", for: indexPath) as! lifeachawardCell
    
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
        
        if let collection = self.lifeachawardCVC{
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
