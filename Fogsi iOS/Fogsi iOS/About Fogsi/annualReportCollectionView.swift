//
//  annualReportCollectionView.swift
//  Fogsi iOS
//
//  Created by Dayal ND on 29/03/20.
//  Copyright © 2020 Dayal ND. All rights reserved.
//

import UIKit



class annualReportCollectionView: UICollectionViewController, UICollectionViewDelegateFlowLayout  {
    
    @IBOutlet var collectionVew: UICollectionView!
    private let spacing:CGFloat = 18.0
    var selecteddictionary:[String:String]?

    var namearray = [["name":"58th Annual Report 2017 – 2018","image":"fogsi_2020","desc":"https://www.fogsi.org/fogsi-annual-report-2017-2018-2/"],["name":"57th Annual Report 2017 – 2018","image":"fogsi_2020","desc":"https://www.fogsi.org/fogsi-annual-report-2016-2017-2/"],["name":"56th Annual Report 2017 – 2018","image":"fogsi_2020","desc":"https://www.fogsi.org/fogsi-annual-report-2015-2016/"],["name":"55th Annual Report 2017 – 2018","image":"fogsi_2020","desc":"https://www.fogsi.org/wp-content/uploads/annual-report/annual-report-2014-2015.pdf"],["name":"54th Annual Report 2017 – 2018","image":"fogsi_2020","desc":"https://www.fogsi.org/wp-content/uploads/annual-report/annual-report-2013-2014.pdf"],["name":"53th Annual Report 2017 – 2018","image":"fogsi_2020","desc":"https://www.fogsi.org/wp-content/uploads/2015/05/pdf/FOGSI_Annual_Report_2012_13.pdf"],["name":"52th Annual Report 2017 – 2018","image":"fogsi_2020","desc":"https://www.fogsi.org/wp-content/uploads/2015/05/pdf/Fogsi_Annual_Report_2011_2012.pdf"],["name":"51th Annual Report 2017 – 2018","image":"fogsi_2020","desc":"https://www.fogsi.org/51st-annual-report-2010-2011/"],["name":"50th Annual Report 2017 – 2018","image":"fogsi_2020","desc":"https://www.fogsi.org/50th-golden-jubilee-annual-report-2009-2010/"]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
 
        // Do any additional setup after loading the view.
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
        return namearray.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "anualReportCollectionViewCell", for: indexPath) as! anualReportCollectionViewCell
    
        cell.layer.cornerRadius = 10
        let dict = namearray[indexPath.row]
        let img = dict["image"]!
        cell.label14.text = dict["name"]
        cell.image14.image = UIImage.init(named: img )
    
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let numberOfItemsPerRow:CGFloat = 2
        let spacingBetweenCells:CGFloat = 2
        
        let totalSpacing = (2 * self.spacing) + ((numberOfItemsPerRow - 1) * spacingBetweenCells) //Amount of total spacing in a row
        
        if let collection = self.collectionVew{
            let width = (collection.bounds.width - totalSpacing)/numberOfItemsPerRow
        return CGSize(width: width - 20, height: width - 20)
        }else{
            return CGSize(width: 0, height: 0)
        }
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
      selecteddictionary = namearray[indexPath.row]
      performSegue(withIdentifier: "annwebttr", sender: self)
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let link = segue.destination as! awwardWebViewVC
        link.dict1 = selecteddictionary
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
