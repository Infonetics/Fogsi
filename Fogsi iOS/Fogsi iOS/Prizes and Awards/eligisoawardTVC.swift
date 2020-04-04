//
//  eligisoawardTVC.swift
//  Fogsi iOS
//
//  Created by Dayal ND on 03/04/20.
//  Copyright © 2020 Dayal ND. All rights reserved.
//

import UIKit

class eligisoawardTVC: UITableViewController {
    
    var selecteddictionary:[String:String]?
    var namearray = [["name":"FOGSI President’s Trophy 2019","desc":"https://www.fogsi.org/wp-content/uploads/awards/fogsi-presidents-trophy-2019.pdf"],["name":"FOGSI Dr.D.K.Tank Trophy-2019","desc":"https://www.fogsi.org/wp-content/uploads/awards/fogsi-dr-d-k-tank-trophy-2019.pdf"],["name":"FOGSI Dr. Duru Shah Youth Trophy 2019","desc":"https://www.fogsi.org/wp-content/uploads/awards/fogsi-dr-duru-shah-youth-trophy-2019.pdf"],["name":"FOGSI Mylan Smriti Award 2019","desc":"https://www.fogsi.org/wp-content/uploads/awards/fogsi-mylan-smriti-award-2019.pdf"],["name":"FOGSI CHITRATHARA & GANGADHARAN Prize 2019","desc":"https://www.fogsi.org/wp-content/uploads/awards/fogsi-chitrathara-gangadharan-prize-2019.pdf"],["name":"FOGSI Dr. S.K.Desai P S Award 2019","desc":"https://www.fogsi.org/wp-content/uploads/awards/fogsi-dr-s-k-desai-p-s-award-2019.pdf"]]

    override func viewDidLoad() {
        super.viewDidLoad()


    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return namearray.count
    }


    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "elisocawardTVCell", for: indexPath) as! elisocawardTVCell

        //cell.layer.cornerRadius = 25
        let dict = namearray[indexPath.row]
        cell.label.text = dict["name"]
        cell.label.layer.borderWidth = 2
        cell.label.layer.borderColor = UIColor.black.cgColor
        //cell.layer.borderWidth = 2
        //cell.layer.borderColor = UIColor.black.cgColor
        cell.clipsToBounds = true
        
        
    return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selecteddictionary = namearray[indexPath.row]
        performSegue(withIdentifier: "webview88", sender: self)
    }
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let link = segue.destination as! awwardWebViewVC
        link.dict1 = selecteddictionary
    }


}
