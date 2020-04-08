//
//  committeeCVC.swift
//  Fogsi iOS
//
//  Created by Dayal ND on 01/04/20.
//  Copyright © 2020 Dayal ND. All rights reserved.
//

import UIKit



class committeeCVC: UICollectionViewController,UICollectionViewDelegateFlowLayout {
    
    @IBOutlet var committeeCVController: UICollectionView!
    private let spacing:CGFloat = 18.0
    
    var namearray = [["name":"Dr. Girish Mane","image":"dr-girish-mane","desc":"ADOLESCENT HEALTH COMMITTEE","textv":"Chairperson\n(2019 – 2021)\nMane Hospital, Behind Bank of India, Datta Chowk, Yavatmal, Maharashtra–445001\nMob:09822276747\nEmail:drgrmane@gmail.com"],["name":"Dr. Meena Samant","image":"meena-samant","desc":"CLINICAL RESEARCH COMMITTEE","textv":"Chairperson\n(2019 – 2021)\n21-D., Road No. 10, Rajendra Nagar, Patna, Bihar-800016\nMob–09334105945\nEmail:meenasamant@rediffmail.com"],["name":"Dr. Rakhi Singh","image":"dr-rakhi-singh","desc":"ENDOCRINOLOGY COMMITTEE","textv":"Chairperson\n(2020-2022)\nShop no. 10, B Block Market, Sector-41, Noida–201301, Uttar Pradesh\nMob:09810253140\nEmail:drrakhisingh@yahoo.co.in"],["name":"Dr. Asha Rao","image":"dr-asha-rao","desc":"ENDOMETRIOSIS COMMITTEE","textv":"Chairperson\n(2020 – 2022)\nRao Hospital, 120, West Periyasamy Road, R.S.Puram, COIMBATORE–641002, Tamil Nadu\nTel:4224048888\nMob: 9994354593\nEmail:asharao55@gmail.com"],["name":"Dr. B. Ramesh","image":"b-ramesh","desc":"ENDOSCOPY COMMITTEE","textv":"Chairperson\n(2018 – 2020)\nAltius Hospital, 6/63, 59th Cross, 4th Block, Rajajinagar, Opp MEI polytechnic, Bangalore-560010, Karnataka\nMob:09844027296\nEmail:endoram2006@yahoo.in"],["name":"Dr. Manish Machave","image":"dr-manish-machave","desc":"ETHICS & MEDICO LEGAL COMMITTEE","textv":"Chairperson\n(2020 – 2022)\nMachave Hospital, B-1, Guru Ganesh Nagar, Azadwadi, Kothrud, Pune–411029, Maharashtra\nMob:09822398058\nEmail:drmanishmachave@gmail.com"],["name":"Dr. Shobha Gudi","image":"shobha-gudi","desc":"FAMILY WELFARE COMMITTEE","textv":"Chairperson\n(2019 – 2021)\nNo. 004, Nandana Grands. Opp: C.K. Auchakattu Tele Exchange Vidyapeeta Road, BSK III Stage, Bangalore, Karnataka-560085\nMob:09980140778\nEmail:sngudi@yahoo.co.in"],["name":"Dr. Vidya Thobbi","image":"dr-vidya-thobbi-1","desc":"FOODS & DRUGS AND MEDICO SURGICAL EQUIPMENT COMMITTEE","textv":"Chairperson\n(2018 - 2020)\nChiranjeevi Maternity Home, Divatgeri Galli, Near Raghvendra Math, Vijayapur-586101, Karnataka\nMob:09448140146\nEmail:thobbividya86@yahoo.com"],["name":"Dr. Mandakini Pradhan","image":"mandakini-pradhan","desc":"GENETIC & FETAL MEDICINE COMMITTEE","textv":"Chairperson\n(2019 - 2021)\nType V-B /2, Sgpgims Campus (Old). Raebareli Rd., Lucknow UP-226014\nMob:09450900011\nEmail:mandakini_pradhan@rediffmail.com"],["name":"Dr. Bhagyalaxmi Nayak","image":"bhagyalaxmi-nayak","desc":"GYNAECOLOGIC ONCOLOGY COMMITTEE","textv":"Chairperson\n(2018 - 2020)\nDept. of Gyn. Oncology, A.H.R.C. Centre, S.C.B. Medical College Campus Cuttack-753007, Odisha\nMob:09437062620\nEmail:blnayak2266@gmail.com"],["name":"Dr. Anju Soni","image":"dr-anju-soni","desc":"HIV & AIDS COMMITTEE","textv":"Chairperson\n(2020 - 2022)\n11 Chetak Marg, Near Police Memorial, Jaipur– 02004, Rajasthan\nMob:09829062028\nEmail:dranjusoni@gmail.com"],["name":"Dr. Meenu Agarwal","image":"dr-meenu-agarwal","desc":"IMAGING SCIENCE COMMITTEE","textv":"Chairperson\n(2018 - 2020)\n201- Le Mirage Housing Society, 16 – Boat Club Road, Next to Gera Plaza, Pune-411001\nMob:09822036970\nEmail:drmjainagarwal@hotmail.com"],["name":"Dr. Kundan Ingale","image":"dr-kundan-ingale","desc":"INFERTILITY COMMITTEE","textv":"Chairperson\n(2020 - 2022)\nNirmiti Clinic, Q 224-226, 2nd floor, Mayur Trade Centre, Mumbai Pune Highway, Near Chinchwad Railway Station, Chinchwad, Pune-411019\nMob:09673508383\nEmail:drkingale@yahoo.com"],["name":"Dr. Varsha Baste","image":"varsha-baste","desc":"INTERNATIONAL ACADEMIC EXCHANGE COMMITTEE","textv":"Chairperson\n(2019 – 2021)\nBaste Maternity Hospital, HPT College Road, College Road, Nashik–422005\nMob:09922111854\nEmail:varsha_baste@yahoo.in"],["name":"Dr. Komal Chavan","image":"komal-chavan","desc":"MEDICAL DISORDERS IN PREGNANCY COMMITTEE","textv":"Chairperson\n(2019 - 2021)\nChavan Maternity & Nursing Home, Nalini Narayan Sadan, Flat No.195/2 B, Opp. Udapi Krishna Hotel, J. P. Road, Andheri (West), Mumbai–400053, Maharashtra\nMob–09321106050\nEmail:komalchavan@gmail.com"],["name":"Dr. Abha Singh","image":"abha-singh","desc":"MEDICAL EDUCATION COMMITTEE","textv":"Chairperson\n(2019 – 2021)\nDirector Professor & Head Dept of Obst. & Gyn. LHMC & SSK Hospital, New Delhi-110001\nMob-09891420228\nEmail-abhasinghlhmc@gmail.com"],["name":"Dr. Bharti Maheshwari","image":"Bharti-Maheshwari","desc":"MEDICAL TERMINATION OF PREGNANCY COMMITTEE","textv":"Chairperson\n(2018 - 2020)\n78/16, Sector 8,Shastri Nagar, Meerut-250004, U.P\nMob:09927856780\nEmail:bhartinalok123@gmail.com"],["name":"Dr. Rajendra Nagarkatti","image":"dr-rajendra-nagarkatti","desc":"MIDLIFE MANAGEMENT COMMITTEE","textv":"Chairperson\n(2018 - 2020)\nAshirwad Maternity & Gyn. Hospital, Samir Apartments, Jesal Park, Sector-K7, Bhayender\nMob:09820026361\nEmail:rajendranagarkatti@gmail.com"],["name":"Dr. Vaishali Chavan","image":"dr-vaishali-chavan","desc":"PERINATOLOGY COMMITTEE","textv":"Chairperson\n(2018 - 2020)\nGulmohar 304, Green Valley Society, Near Petrol Pump, Wanawadi, Pune–411040\nMob:09850058408\nEmail:drvaishalichavan@gmail.com"],["name":"Dr. Sanjay Kishore Das","image":"sanjay-das","desc":"PRACTICAL OBSTETRIC COMMITTEE","textv":"Chairperson\n(2018 - 2020)\nKalyani Bhawan, Bachhara Patna, Jatni, Khurda-752050, Odisha\nMob:09437091330/9556391330\nEmail:drsanjaykdas@yahoo.co.in"],["name":"Dr. Kalyan Barmade","image":"dr-kalyan-barmade","desc":"PUBLIC AWARENESS COMMITTEE","textv":"Chairperson\n(2019 – 2021)\nBarmade Hospital, Opp Datta Mandir, Main Ausa Road, Latur-413531\nMob:09822994585\nEmail:kalyan_barmade@yahoo.co.in"],["name":"Dr. Sebanti Goswami","image":"dr-sebanti-goswami-1","desc":"QUIZ COMMITTEE","textv":"Chairperson\n(2018 - 2020)\n317, New Raipur, Opp. Dabur Park, Ganguly Bagan, Flat - 1B, Kolkata-700084, WB\nMob:9831135933\nEmail:sebantigoswami@yahoo.co.in"],["name":"Dr. Priti Kumar","image":"dr-priti-kumar","desc":"SAFE MOTHERHOOD COMMITTEE","textv":"Chairperson\n(2020 – 2022)\nH. No. 2 - B / 6, Chandganj Garden Road, Lucknow–226024, Uttar Pradesh\nMob:09415085827\nEmail:drpritikumar2015@gmail.com"],["name":"Dr. Niraj Jadav","image":"dr-niraj-jadhav","desc":"SEXUAL MEDICINE COMMITTEE","textv":"Chairperson\n(2020 – 2022)\n2, Ambaji Kadva Plot, Opp. School No. 69, Krishnanagar, Main Road, Mavdi Plot, Rajkot–360004, Gujarat\nMob:09824211251\nEmail:nirajjadav@yahoo.com"],["name":"Dr. Sneha Bhuyar","image":"Sneha","desc":"STUDY ON FEMALE BREAST COMMITTEE","textv":"Chairperson\n(2019 - 2021)\nSukhakarta Hospital, Mainde Chowk, Yavatmal, Maharashtra-445001\nMob:09767735644\nEmail:sukhkarta11@yahoo.com"],["name":"Dr. J. B. Sharma","image":"dr-jb-sharma","desc":"UROGYANECOLOGY COMMITTEE","textv":"Chairperson\n(2020 – 2022)\nA-1/61, Sri Aurbindo Marg, Azad Apartments, New Delhi-110016\nMob:09868397309\nEmail:jbsharma2000@gmail.com"],["name":"Dr. Neharika Malhotra Bora","image":"dr-niharika-bora","desc":"YOUNG TALENT PROMOTION COMMITTEE","textv":"Chairperson\n(2020 – 2022)\nMalhotra Nursing and Maternity Home (P) Ltd., 84, M.G. Road, Agra–282010, Uttar Pradesh\nMob:08055387886\nEmail:dr.neharika@gmail.com"]]


    override func viewDidLoad() {
        super.viewDidLoad()

    committeeCVController.dataSource = self
    committeeCVController.delegate = self
    self.navigationItem.title = "Committees"
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
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "committeeCCell", for: indexPath) as! committeeCCell
    
        let dict = namearray[indexPath.row]
        let img = dict["image"]!
        cell.label67.text = dict["name"]
        cell.image76.image = UIImage.init(named: img )
        cell.labelsecond.text = dict["desc"]
        cell.textView67.text = dict["textv"]
    
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let numberOfItemsPerRow:CGFloat = 2
        let spacingBetweenCells:CGFloat = 2
        
        let totalSpacing = (2 * self.spacing) + ((numberOfItemsPerRow - 1) * spacingBetweenCells) //Amount of total spacing in a row
        
        if let collection = self.committeeCVController{
            let width = (collection.bounds.width - totalSpacing)/numberOfItemsPerRow
        print(width)
            return CGSize(width: width , height: width + 281.5)
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
