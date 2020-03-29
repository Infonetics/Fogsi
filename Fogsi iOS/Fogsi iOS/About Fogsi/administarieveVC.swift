//
//  administarieveVC.swift
//  Fogsi iOS
//
//  Created by Dayal ND on 29/03/20.
//  Copyright © 2020 Dayal ND. All rights reserved.
//

import UIKit
import WebKit

class administarieveVC: UIViewController{

    @IBOutlet var adminWebView: WKWebView!
    @IBOutlet var activityAdmin: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        let myURL = URL(string:"https://www.fogsi.org/administrative-guidelines-april-2012/")
        let myRequest = URLRequest(url: myURL!)
        adminWebView.load(myRequest)
        
        
    }
    


    
    func  webViewDidStartLoad(_ webView: WKWebView) {
        activityAdmin.startAnimating()
    }
    
    func webViewDidFinishLoad(_ webView: WKWebView) {
        activityAdmin.stopAnimating()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
