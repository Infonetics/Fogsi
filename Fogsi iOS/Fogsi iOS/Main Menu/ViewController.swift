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
    var selectedweb:String?

    var namearray = [["name":"About FOGSI","image":"about_fogsi"],["name":"Fogsi 2020","image":"fogsi_2020"],["name":"Office Bearers","image":"office_bearers"],["name":"Committees","image":"committees"],["name":"Member Societies","image":"member_societies"],["name":"Prizes and Awards","image":"prizes_and_awards"],["name":"Training Program","image":"training_program"],["name":"What's New","image":"whats_new"],["name":"GCPR","image":"gcpr"],["name":"Resources","image":"resources"],["name":"News","image":"news"],["name":"Videos","image":"videos"],["name":"Photo Gallery","image":"photo_gallery"],["name":"Archives","image":"archives"],["name":"Fogsi Focus","image":"fogsi_focus"],["name":"Newsletter","image":"newsletter"],
                     ["name":"ICOG","image":"websites"],
                     ["name":"JOGI","image":"websites"],
                     ["name":"MANYATA","image":"websites"],
                     ["name":"FOGSI PAYMENT GATEWAY","image":"websites"],
                     ["name":"AICOG 2021","image":"websites"],
                     ["name":"CONFERENCES","image":"websites"],
                     ["name":"PRESIDENT ACTIVITIES 2020","image":"websites"],
                     ["name":"COMMITTEE ACTIVITIES 2020","image":"websites"],
        
                     
        ["name":"Contact Us","image":"contact_us"]
    ]
    
    override func viewDidLoad() {
        collectionviewmain.dataSource = self
        collectionviewmain.delegate = self        
        super.viewDidLoad()
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
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
            
            if indexPath.row == 24 {
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
        selectedweb = "https://www.fogsi.org/category/whats-new/"
        performSegue(withIdentifier: "whatsnew", sender: self)
        }
        if indexPath.row == 8 {
        selectedweb = "https://www.fogsi.org/fogsi-icog-good-clinical-practice-recommendations/"
        performSegue(withIdentifier: "whatsnew", sender: self)
        }
        if indexPath.row == 9 {
        performSegue(withIdentifier: "resourcet", sender: self)
        }
        if indexPath.row == 10 {
        selectedweb = "https://www.fogsi.org/category/archives-news/"
        performSegue(withIdentifier: "whatsnew", sender: self)
        }
        if indexPath.row == 11 {
        performSegue(withIdentifier: "videog11", sender: self)
        }
        if indexPath.row == 12 {
        performSegue(withIdentifier: "albumseg", sender: self)
        }
        if indexPath.row == 13 {
        performSegue(withIdentifier: "archtvc", sender: self)
        }
        if indexPath.row == 14 {
        selectedweb = "https://www.fogsi.org/category/fogsi-focus/"
        performSegue(withIdentifier: "whatsnew", sender: self)
        }
        if indexPath.row == 15 {
        performSegue(withIdentifier: "newsactual", sender: self)
        }
        if indexPath.row == 16 {
        selectedweb = "http://www.icogonline.org/"
        performSegue(withIdentifier: "whatsnew", sender: self)
        }
        if indexPath.row == 17 {
        selectedweb = "https://jogi.co.in/"
        performSegue(withIdentifier: "whatsnew", sender: self)
        }
        if indexPath.row == 18 {
        selectedweb = "https://www.fogsi.org/manyata/"
        performSegue(withIdentifier: "whatsnew", sender: self)
        }
        if indexPath.row == 19 {
        selectedweb = "http://member.fogsi.org/Payment_Login.aspx"
        performSegue(withIdentifier: "whatsnew", sender: self)
        }
        if indexPath.row == 20 {
        selectedweb = "https://aicog2021indore.org/"
        performSegue(withIdentifier: "whatsnew", sender: self)
        }
        if indexPath.row == 21 {
        selectedweb = "https://www.fogsi.org/events/"
        performSegue(withIdentifier: "whatsnew", sender: self)
        }
        if indexPath.row == 22 {
        selectedweb = "https://www.fogsi.org/fogsi-2020-activities/"
        performSegue(withIdentifier: "whatsnew", sender: self)
        }
        if indexPath.row == 23 {
        selectedweb = "https://www.fogsi.org/committee-activities-2020/"
        performSegue(withIdentifier: "whatsnew", sender: self)
        }
        if indexPath.row == 24 {
        performSegue(withIdentifier: "contactus", sender: self)
        }
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      
         if segue.identifier == "whatsnew"{
            let link = segue.destination as! webviewTrainingVC
            link.selectedwebsite = selectedweb
              
    }
    
    }
    
    
}

