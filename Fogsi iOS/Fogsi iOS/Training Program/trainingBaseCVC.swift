//
//  trainingBaseCVC.swift
//  Fogsi iOS
//
//  Created by Dayal ND on 04/04/20.
//  Copyright © 2020 Dayal ND. All rights reserved.
//

import UIKit



class trainingBaseCVC: UICollectionViewController,UICollectionViewDelegateFlowLayout {

    
    @IBOutlet var basecollection: UICollectionView!
    var selecteddictionary:[String:Any]?
    var arrayofdatatopass:[String]?
    var arrayofwebtopass:[String]?
    private let spacing:CGFloat = 18.0
    
 
    var firstarraay =    [
      ["name":"Ultrasound Training","image":"fogsi_2020",
        "data":
          [
            "Ultrasound Training List","Ultrasound Training Form"
          ],
        "link":
        [
          "https://www.fogsi.org/wp-content/uploads/training_program/usg_training_center_list.pdf","https://www.fogsi.org/wp-content/uploads/training_program/ultrasound_training_form_2018.pdf"]
      ],
      ["name":"Infertility Training","image":"fogsi_2020",
        "data":
          [
            "Infertility Training List","Infertility Training Form"
          ],
        "link":
        [
          "https://www.fogsi.org/wp-content/uploads/training_program/infertility_training_centers_list.pdf","https://www.fogsi.org/wp-content/uploads/training_program/infertility_training_form_2018.pdf"]
      ],
      ["name":"Endoscopy Training","image":"fogsi_2020",
        "data":
          [
            "Syllabus","Endoscopy Training List","Endoscopy Training Form","Evaluation Form"
          ],
        "link":
        [
          "","https://www.fogsi.org/wp-content/uploads/training_program/endoscopy_training_centers_list.pdf","https://www.fogsi.org/wp-content/uploads/training_program/endoscopy_training_form_2018.pdf","https://www.fogsi.org/wp-content/uploads/2015/training_form/Evaluation_form.pdf"]
      ]
        ,
        ["name":"Colposcopy Training","image":"fogsi_2020",
          "data":
            [
              "Colposcopy Training List","EColposcopy Training Form"
            ],
          "link":
          [
            "https://www.fogsi.org/wp-content/uploads/training_program/cervical_cytology_training_center_list.pdf","https://www.fogsi.org/wp-content/uploads/training_program/cytology_training_form_2018.pdf"]
        ],
        ["name":"Training Fee","image":"fogsi_2020",
          "data":
            [
              "Training Fees Structure 2017"
            ],
          "link":
          [
            "https://www.fogsi.org/wp-content/uploads/training_program/training_fees_structure_2017.pdf"]
        ]
    ]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        basecollection.dataSource = self
        basecollection.delegate = self
        self.navigationItem.title = "Training Program"
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
        return firstarraay.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "trainingbaseCell", for: indexPath) as! trainingbaseCell
    
        cell.layer.cornerRadius = 10
        let dict = firstarraay[indexPath.row]
        let img = dict["image"]!
        cell.label1.text = dict["name"] as? String
        cell.image1.image = UIImage.init(named: img as! String )
    
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let numberOfItemsPerRow:CGFloat = 2
        let spacingBetweenCells:CGFloat = 2
        
        let totalSpacing = (2 * self.spacing) + ((numberOfItemsPerRow - 1) * spacingBetweenCells) //Amount of total spacing in a row
        
        if let collection = self.basecollection{
            let width = (collection.bounds.width - totalSpacing)/numberOfItemsPerRow
        return CGSize(width: width - 20, height: width - 20)
        }else{
            return CGSize(width: 0, height: 0)
        }
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
   
        selecteddictionary = firstarraay[indexPath.row]
        arrayofdatatopass = selecteddictionary?["data"] as? [String]
        arrayofwebtopass = selecteddictionary?["link"] as? [String]
        performSegue(withIdentifier: "secondtraining", sender: self)

      }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 
       let link = segue.destination as! trainingSecondCVC
       link.dict1 = selecteddictionary
       link.arrayofdata = arrayofdatatopass
       link.arrayofweb = arrayofwebtopass
        
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
