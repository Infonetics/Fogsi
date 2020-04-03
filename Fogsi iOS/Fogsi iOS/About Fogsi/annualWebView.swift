//
//  annualWebView.swift
//  Fogsi iOS
//
//  Created by Dayal ND on 29/03/20.
//  Copyright © 2020 Dayal ND. All rights reserved.
//

import UIKit
import WebKit

class annualWebView: UIViewController,WKNavigationDelegate {

    @IBOutlet var webViewannual: WKWebView!
    @IBOutlet var activityAnn: UIActivityIndicatorView!
    
    var dict1:[String:String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let website = dict1?["desc"]
        let myURL = URL(string: website! )
        let myRequest = URLRequest(url: myURL!)
        webViewannual.load(myRequest)
            
       self.webViewannual.addSubview(self.activityAnn)
       self.activityAnn.startAnimating()
       self.webViewannual.navigationDelegate = self
       self.activityAnn.hidesWhenStopped = true
    }
    
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activityAnn.stopAnimating()
    }

    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        activityAnn.stopAnimating()
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
