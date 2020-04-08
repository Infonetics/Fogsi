//
//  photoTVC.swift
//  Fogsi iOS
//
//  Created by Dayal ND on 06/04/20.
//  Copyright © 2020 Dayal ND. All rights reserved.
//

import UIKit

class photoTVC: UITableViewController {

    @IBOutlet var photowebTVC: UITableView!
    
    var statelist = [[String:AnyObject]]()
    
    var webtopass:String?
    
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
        return statelist.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "photoTVCell", for: indexPath) as! photoTVCell

            let dict = statelist[indexPath.row]
            webtopass = dict["image"] as? String
            let imageUrlString = "https://admin.fogsi.bdbs.co.in/" + webtopass!
            cell.imageV.loadImageUsingUrlString(urlString: imageUrlString)

        return cell
    }

}




let imageCache = NSCache<AnyObject, AnyObject>()

extension UIImageView {
    
    func loadImageUsingUrlString(urlString: String)  {
        let url = NSURL(string: urlString)
        
        image = nil
        
        if let imageFromCache = imageCache.object(forKey: urlString as NSString) as? UIImage{
            
            self.image = imageFromCache
            return
        }
        
        URLSession.shared.dataTask(with: url! as URL, completionHandler:
            { (data, respones, error) in
                if error != nil {
                    
                    print(error as Any)
                    return
                }
                DispatchQueue.main.async(){
                    
                    let imageToCache = UIImage(data: data!)
                    
                    imageCache.setObject(imageToCache!, forKey: urlString as NSString)
                    
                    self.image = imageToCache
                }
                
            }).resume()
    }
   
}


