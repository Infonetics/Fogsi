//
//  catvideoTVC.swift
//  Fogsi iOS
//
//  Created by Dayal ND on 06/04/20.
//  Copyright © 2020 Dayal ND. All rights reserved.
//

import UIKit

class catvideoTVC: UITableViewController {
    
    @IBOutlet var catvideoTVC: UITableView!
    
    var array1 = [[String:AnyObject]]()
    
    var array2 = [[String:AnyObject]]()
    
    var fullDetails = [String : AnyObject]()
    
    var fullDetails2 = [String : AnyObject]()
    
    let activityView = UIActivityIndicatorView(style: .large)
    
    var selecteddictionary = [String:AnyObject]()
    
    var selectedweb:String?
    
    var cidtopass:String?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        showActivityIndicatory()
        getMethod()
        self.navigationItem.title = "Videos"
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return array1.count
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


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "catvideoCell", for: indexPath) as! catvideoCell

        let dict = array1[indexPath.row]
        cell.label.text = dict["name"] as? String
        
        cell.label.layer.borderWidth = 0.5
        cell.label.layer.borderColor = UIColor.black.cgColor
        
        hideActivityIndicator()

        return cell
    }

    func getMethod(){

               let urlstring = "https://fogsi.bdbs.co.in/mobileapp/video_cat.php"
               let urlString = URL(string: urlstring )
               
               print ( "\(String(describing: urlString))" )
               
               if let url = urlString {
                
                   let task = URLSession.shared.dataTask(with: url)
                   { (data, response, error)
                       in
                       if error != nil {
                           print(error!)
                       } else {
                           if let usableData = data {
                               
                               do{
                                   let json = try JSONSerialization.jsonObject(with: usableData, options:.allowFragments) as! [String : AnyObject]
       
                                   OperationQueue.main.addOperation({
                                       
                                       print(json)

                                       DispatchQueue.main.async {
                 
                                        self.fullDetails = json
                                        print("FULL=\(self.fullDetails)")
                                       
                                        self.array1 = (self.fullDetails["videoCatList"] as? [[String:AnyObject]])!
                                        print("FULL=\(self.array1)")
                                        self.tableView.reloadData()

                                           if json["sys"] != nil {

                                           }else{
                                               
                                           }

                                       }
            })
                                   
                               }catch let error as NSError{
                                   print(error)
                               }
                               
                               
                               print(usableData)
                           }
                       }
                   }
                   
                   
                   task.resume()
                   
               }
               
       }
       
    func getMethod2(){

                
                let urlstring = "https://fogsi.bdbs.co.in/mobileapp/video.php?cid=" + cidtopass!
                let urlString = URL(string: urlstring )
                
                print ( "\(String(describing: urlString))" )
                
                if let url = urlString {
                 
                    let task = URLSession.shared.dataTask(with: url)
                    { (data, response, error)
                        in
                        if error != nil {
                            print(error!)
                        } else {
                            if let usableData = data {
                                
                                do{
                                    let json = try JSONSerialization.jsonObject(with: usableData, options:.allowFragments) as! [String : AnyObject]
        
                                    OperationQueue.main.addOperation({
                                        
                                        print(json)

                                        DispatchQueue.main.async {
                  
                                         self.fullDetails2 = json
                                         print("FULL2=\(self.fullDetails2)")
                                        
                                         self.array2 = (self.fullDetails2["videoList"] as? [[String:AnyObject]])!
                                         print("FULL2=\(self.array2)")
                                         self.tableView.reloadData()

                                            if json["videoList"] != nil {

                                               self.performSegue(withIdentifier: "videog22", sender: self)
                                               
                                            }else{
                                               
                                               let alert = UIAlertController.init(title: "Not Found", message: "Please Reselect", preferredStyle: UIAlertController.Style.alert)
                                               alert.addAction(UIAlertAction.init(title: "Back", style: UIAlertAction.Style.default, handler: { _ in
                                                   alert.resignFirstResponder()
                                                   
                                               }))
                                               
                                               self.present(alert,animated: true,completion:  nil)
                                                
                                            }

                                        }
             })
                                    
                                }catch let error as NSError{
                                    print(error)
                                }
                                
                                
                                print(usableData)
                            }
                        }
                    }
                    
                    
                    task.resume()
                    
                }
                
        }


       
       override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
           
           selecteddictionary = array1[indexPath.row]
           cidtopass = selecteddictionary["id"] as? String
           getMethod2()
    
       }


       override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

           let link = segue.destination as! videogalleryTVC
           link.statelist = array2
    
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
