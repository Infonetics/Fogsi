//
//  administarieveVC.swift
//  Fogsi iOS
//
//  Created by Dayal ND on 29/03/20.
//  Copyright © 2020 Dayal ND. All rights reserved.
//

import UIKit
import WebKit

class administarieveVC: UIViewController,WKNavigationDelegate{

    @IBOutlet var adminWebView: WKWebView!
    @IBOutlet var activityAdmin: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        let myURL = URL(string:"https://www.fogsi.org/administrative-guidelines-april-2012/")
        let myRequest = URLRequest(url: myURL!)
        adminWebView.load(myRequest)
        
        self.adminWebView.addSubview(self.activityAdmin)
        self.activityAdmin.startAnimating()
        self.adminWebView.navigationDelegate = self
        self.activityAdmin.hidesWhenStopped = true
    }
    


    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activityAdmin.stopAnimating()
    }

    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
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
