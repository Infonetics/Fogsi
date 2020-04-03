//
//  codeOfConduct.swift
//  Fogsi iOS
//
//  Created by Dayal ND on 29/03/20.
//  Copyright © 2020 Dayal ND. All rights reserved.
//

import UIKit
import WebKit


class codeOfConduct: UIViewController,WKNavigationDelegate {
    
@IBOutlet var webView: WKWebView!
@IBOutlet var activityindicator: UIActivityIndicatorView!

  
    override func viewDidLoad() {
        super.viewDidLoad()
   
 
    let myURL = URL(string:"https://www.fogsi.org/wp-content/uploads/2015/05/pdf/code_conduct_Ethics.pdf")
    let myRequest = URLRequest(url: myURL!)
    webView.load(myRequest)
        
    self.webView.addSubview(self.activityindicator)
    self.activityindicator.startAnimating()
    self.webView.navigationDelegate = self
    self.activityindicator.hidesWhenStopped = true

    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activityindicator.stopAnimating()
    }

    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        activityindicator.stopAnimating()
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
