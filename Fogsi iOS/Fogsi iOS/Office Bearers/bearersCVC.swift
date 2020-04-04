//
//  bearersCVC.swift
//  Fogsi iOS
//
//  Created by Dayal ND on 31/03/20.
//  Copyright © 2020 Dayal ND. All rights reserved.
//

import UIKit



class bearersCVC: UICollectionViewController,UICollectionViewDelegateFlowLayout {
    
    @IBOutlet var bearerCVController: UICollectionView!
    private let spacing:CGFloat = 18.0
    
    var namearray = [["name":"Dr. Alpesh Gandhi","image":"dr-alpesh-gandhi","desc":"PRESIDENT","textv":"A/201,Gokul Appt.Bada Park Soc., Muni Garden Mirambika School Rd,\nAhmedabad–380013, Gujarat.\nTel:079-27415620®,27484327 ©\nMob:9825063582\nEmail:gandhialpesh@gmail.com"],["name":"Dr. S. Shantha Kumari","image":"dr-shantha-kumari","desc":"PRESIDENT ELECT","textv":"1-1-474/3, New Bakaram,Gandhinagar,Hyderabad-500080 AP.\nTel:040-27612499\nMob:09848031857\nEmail:drshanthakumari@yahoo.com"],["name":"Dr. Nandita Palshetkar","image":"dr-nandita-palshetkar","desc":"IMMEDIATE PAST PRESIDENT","textv":"2301/02, Bayview Terraces, Opp- Adarsh Nagar Telephone Exchange, Hatiskar Marg, Old  Prabhadevi Road, Mumbai–400025, Maharashtra\nTel:23512315/23677063\nMob:09820032315"],["name":"Dr. Anita Singh","image":"dr-anita-singh","desc":"VICE PRESIDENT","textv":"Jan Chikitsa Hospital, Mithapore, Patna–800001, Bihar, Uttar Pradesh\nMob:09334111925\nEmail:anitasinghob@gmail.com"],["name":"Dr. Atul Ganatra","image":"dr-atul-ganatra","desc":"VICE PRESIDENT","textv":"B-1701, Madam Mohan Malviya Road, Opposite Samrudhi Hall, Near Telephone Exchange, Mulund (W), Mumbai-400080.\nMob:09821163277\nEmail:ganatra.atul@gmail.com"],["name":"Dr. Ramani Devi Thirunavukkarasu","image":"dr-t-ramani-devi","desc":"VICE PRESIDENT","textv":"Ramakrishna Nursing Home Vivekananda Nagar Trichy, Tamil Nadu-620003\nMob:09443155282\nEmail:ramanidevidr@yahoo.co.in"],["name":"Dr. Archana Baser","image":"dr-archana-baser","desc":"VICE PRESIDENT","textv":"9/2 Manoramaganj, Street No.5, Navratan Bagh, Opp.Dak Kunj, Indore–452002\nMob:09826064080\nEmail:archanabaser@gmail.com"],["name":"Dr. Ragini Agrawal","image":"dr-ragini-agrawal","desc":"VICE PRESIDENT","textv":"Ragini's Ob. Gyn. Centre 2, Jharsa Road, Gurgaon, Haryana-122011\nMob:09711187176\nEmail:ragini.womenhealth1@gmail.com"],["name":"Dr. Jaydeep Tank","image":"dr-jaideep-tank","desc":"SECRETARY GENERAL","textv":"701, Kaveri-“B”, Neelkanth Valley, Rajawadi, Road No.7, Ghatkopar (E), Mumbai–400077\nTel:65076987,25090401\nMob:9820106354\nEmail:drjaydeeptank@gmail.com"],["name":"Dr. Madhuri Patel","image":"dr-madhuri-patel","desc":"DP. SECRETARY GENERAL","textv":"Navyug Niwas B-54, 6th Floor, Opp. Minerva Theatre, Dr. D. B. Road, Mumbai–400007 MS\nTel:23085673\nMob:09869042132\nEmail:drmadhuripatel@gmail.com"],["name":"Dr. Sunil Shah","image":"dr-sunil-shah-latest","desc":"JOINT SECRETARY","textv":"301-304, 3rd Floor, Jyoti Complex, Besides Parekhs Hospital, Near Shymal Over Bridge, Ahmedabad–380015, Gujarat.\nMob:09099977077\nEmail:sunilshah0501@gmail.com"],["name":"Dr. Suvarna Khadilkar","image":"khadilkar","desc":"TREASURER","textv":"61/62, 6th Floor, New Clement Court, Shivaji Park, Dadar, Mumbai–400028, Maharashtra\nTel:022-24324606\nMob:9820078703\nEmail:suvarnakhadilkar2@gmail.com"],["name":"Dr. Parikshit Tank","image":"parikshit-tank","desc":"JOINT TREASURER","textv":"601,Sunflower,Road No.2, Rajawadi, Ghatkopar, Mumbai–400077, Maharashtra.\nMob:09833255870\nEmail:pariktank@gmail.com"]]

    override func viewDidLoad() {
        super.viewDidLoad()

       bearerCVController.dataSource = self
       bearerCVController.delegate = self
    
        
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
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "bearersCVCell", for: indexPath) as! bearersCVCell
    
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
        
        if let collection = self.bearerCVController{
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
