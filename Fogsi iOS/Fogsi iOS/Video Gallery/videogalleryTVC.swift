//
//  videogalleryTVC.swift
//  Fogsi iOS
//
//  Created by Dayal ND on 06/04/20.
//  Copyright © 2020 Dayal ND. All rights reserved.
//

import UIKit

class videogalleryTVC: UITableViewController {
    
    @IBOutlet var videogalleryTVC: UITableView!
    
    let activityView = UIActivityIndicatorView(style: .large)
    
    var statelist = [[String:AnyObject]]()
    
    var selectedstate = [String:AnyObject]()
    
    var webtopass:String?

    override func viewDidLoad() {
        super.viewDidLoad()

   showActivityIndicatory()
        
    }

    func showActivityIndicatory() {
        
        activityView.center = self.view.center
        self.view.addSubview(activityView)
        activityView.color = .black
        activityView.startAnimating()
    }
    func hideActivityIndicator(){
        activityView.stopAnimating()
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return statelist.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "videoGalleryTVCell", for: indexPath) as! videoGalleryTVCell

        let dict = statelist[indexPath.row]
        cell.label.text = dict["name"] as? String
        
        cell.label.layer.borderWidth = 0.5
        cell.label.layer.borderColor = UIColor.black.cgColor
        hideActivityIndicator()


        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        selectedstate = statelist[indexPath.row]
        webtopass = selectedstate["vid"] as? String
        performSegue(withIdentifier: "videowebh", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        
        let link = segue.destination as! webVideoVC
        link.selectedwebsite = webtopass
        
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
