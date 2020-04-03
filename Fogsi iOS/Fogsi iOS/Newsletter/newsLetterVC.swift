//
//  newsLetterVC.swift
//  Fogsi iOS
//
//  Created by Dayal ND on 02/04/20.
//  Copyright © 2020 Dayal ND. All rights reserved.
//

import UIKit

class newsLetterVC: UIViewController {
    
    var fullDetails = [String : AnyObject]()

    override func viewDidLoad() {
        super.viewDidLoad()

   // self.requestPost()

    //sendJson()
        
    }
    /*
        
    func requestPost () {

        var request = URLRequest(url: URL(string: "https://fogsi.bdbs.co.in/mobileapp/video.php")!)
        request.httpMethod = "POST"
        let postString = "numQue"

        request.httpBody = postString.data(using: .utf8)
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data, error == nil else {
                print("error=\(String(describing: error))")
                return
            }
            if let array = (try? JSONSerialization.jsonObject(with: data, options: [])) as? [[String:Any]],
               let obj = array.first {
                print("obj")

                 let id = obj["id"] as? String
                print("id")
                 //Set id to label on main thread
                 DispatchQueue.main.async {
                     // self.yourIdLabel.text = id
                 }
            }

        }
        task.resume()
    }
    

    func sendJson(){
        let usernametext = "videoList"
        let request = NSMutableURLRequest(url: NSURL(string: "https://fogsi.bdbs.co.in/mobileapp/video.php")! as URL)
        request.httpMethod = "POST"
        let postString = "Title=\(usernametext)"
        request.httpBody = postString.data(using: String.Encoding.utf8)

        let task = URLSession.shared.dataTask(with: request as URLRequest) {
            data, response, error in

            if error != nil {
                print("error=\(String(describing: error))")
                return
            }

            print("response = \(String(describing: response))")

            let responseString = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)
            print("responseString = \(String(describing: responseString))")
        }
        task.resume()
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
