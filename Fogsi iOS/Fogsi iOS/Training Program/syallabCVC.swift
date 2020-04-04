//
//  syallabCVC.swift
//  Fogsi iOS
//
//  Created by Dayal ND on 04/04/20.
//  Copyright © 2020 Dayal ND. All rights reserved.
//

import UIKit



class syallabCVC: UICollectionViewController,UICollectionViewDelegateFlowLayout{
    
    
    @IBOutlet var syallabaus: UICollectionView!
    var selecteddictionary:[String:String]?
    private let spacing:CGFloat = 18.0
    var namearray = [["labeltext":"Basic Endoscopic Training","name":"Course & Syllabus detail : Basic Endoscopic Training","image":"fogsi_2020","text":"  Course HIGHLIGHTS:\n  The course aims for the development of basic skills. Basic Endoscopic Training is a seven days programme will focus in providing introduction of basic Laparoscopy & Hysteroscopy and operative Gynaecological Endoscopy for every Gynaecologist who is exposed to most of  the Gynaecological surgeries carried out by Laparotomy and now wants to learn Endosmotically and to learn about its operative techniques, indications ,contraindications and limitations of Endoscopic surgery ,required skills and potential complications with preventive strategies for the benefit & safe outcome of our patient. Formal recommendation is to start doing Laparoscopic Tubal ligation operation, as it is easy to start with and once you are experienced in doing it you should plan to go for Basic Endoscopic training.\n  Basic Endoscopic Training includes Endoscopy OT Set up & Endoscopy Instrumentation, Pelvic Endo-trainer Exercises for Hand- Eye co-ordination skills development & orientation to different skills, Indications, Pre-operative & post operative care, Principals of infection prevention in O.T., Principals of Electrocautery, Diagnostic Laparoscopy & Hysteroscopy, Laparoscopic management of Ectopic pregnancy, mid to moderate Endometriosis, Adhesiolysis, PCOD drilling, Hysteroscopic Tubal Cannulation, septum excision, Cu-T removal etc. and assisting different Endoscopic surgeries as second assistant and vaginal end assistant during training.\n\n  COURSE LEARNING OBJECTIVES:\n  Upon completion of this course, participants should be able to:\n\u{2022} Demonstrate application of different Gynaecological surgeries by Laparoscopy & Hysteroscopy.\n\u{2022} Improved Hand –Eye co-ordination skills during different exercises on pelvic trainer.\n\u{2022} Explain take-home pearls regarding improved efficiency in the operative room in terms of required criteria for selection of the patient, operative note and instruments in different Endoscopic surgeries. This will be monitored from your Log book showing your daily seven days activities.\n\u{2022} Identify how to avoid and manage complications in different Laparoscopic & Hysteroscopic surgeries.\n\n  Course Eligibility: \n  The candidate applying for Basic & Advanced Gynaecological Endoscopic Training should have successfully completed\n\u{2022} M.D./DGO/FCPS in Obstetrics & Gynaecology in MCI approved place or D.N.B. in Obstetrics & Gynaecology in NBE approved place\n\u{2022} Should be an active member of any FOGSI Society\n\n  Procedure for applying for the COURSE:\n  The candidate is asked to pay Rs.15.000/- for Basic Endoscopic Training and Rs.25, 000/- for Advanced Endoscopic training by Demand Draft in favor of “FOGSI” payable at Mumbai with prescribed application from FOGSI website:  and selecting a centre in it and your local FOGSI society membership certification during the time of applying for training."],
    ["labeltext":"Advanced Endoscopic Training","name":"Course & Syllabus detail : Advanced Endoscopic Training","image":"fogsi_2020","text":"  Course HIGHLIGHTS:\n  Advanced Endoscopic Training is a fourteen days programme and it will focus in providing advanced operating room efficiency, newer advanced operative techniques and video surgical demonstration of diverse operative procedures of benign Gynaecological surgeries. There will be ample scope for each case discussion & interaction for operative different techniques, reporting of operative data, evaluating results and methodology of data collection and different video recording methods.\n  Advanced Endoscopic training is recommended to Gynaecologist who had already done more than 100 Basic Laparoscopic & Hysteroscopic surgeries in the past and now wants to learn different advanced Endoscopic techniques in his/her practice.\n  Advanced Endoscopic Training includes need for advanced Endoscopy Instrumentation, Pelvic Endo-trainer Exercises for Hand- Eye co-ordination skills development & orientation to different skills, Indications, Pre-operative & post operative care, Operative safety guidelines for different Surgeries like Laparoscopic Hysterectomy, Laparoscopic surgeries for fibroid , Severe Endometrisis,prolapse ,pelvic Floor Defects, Benign Ovarian tumors, Redo Surgeries, Tubal surgeries etc. and hysteroscopic surgeries for submucus fibroid removal, Asherman’s syndrome, Trance cervical resection of Endometrium (TCRE) etc. and assisting different Endoscopic surgeries as second assistant and vaginal end during training.\n\n  COURSE LEARNING OBJECTIVES:\n  Upon completion of this course, participants should be able to:\n\u{2022} Demonstrate application of different advanced Gynaecological surgeries by Laparoscopy & Hysteroscopy.\n\u{2022} Improved Hand –Eye co-ordination skills during different exercises on pelvic trainer for advanced procedures.\n\u{2022} Explain take-home pearls regarding improved efficiency in the operative room for different advanced operative procedures in terms of required criteria for selection of the patient, operative note and instruments in different surgeries. This will be monitored from your Log book showing your daily fourteen days activities.\n\u{2022} Identify how to avoid and manage complications in different advanced Laparoscopic & Hysteroscopic surgeries during video demonstration of different surgery."]
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

    syallabaus.dataSource = self
    syallabaus.delegate = self
     
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
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "syallabaCell", for: indexPath) as! syallabaCell
    
        cell.layer.cornerRadius = 10
        let dict = namearray[indexPath.row]
        let img = dict["image"]!
        cell.label1.text = dict["labeltext"]
        cell.image1.image = UIImage.init(named: img )
    
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let numberOfItemsPerRow:CGFloat = 2
        let spacingBetweenCells:CGFloat = 2
        
        let totalSpacing = (2 * self.spacing) + ((numberOfItemsPerRow - 1) * spacingBetweenCells) //Amount of total spacing in a row
        
        if let collection = self.syallabaus{
            let width = (collection.bounds.width - totalSpacing)/numberOfItemsPerRow
        return CGSize(width: width - 20, height: width - 20)
        }else{
            return CGSize(width: 0, height: 0)
        }
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
      
        selecteddictionary = namearray[indexPath.row]
        performSegue(withIdentifier: "syallrrtt", sender: self)
     }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

    let link = segue.destination as! textview768VC
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
