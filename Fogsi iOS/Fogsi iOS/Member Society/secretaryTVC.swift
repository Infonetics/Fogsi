//
//  secretaryTVC.swift
//  Fogsi iOS
//
//  Created by Dayal ND on 03/04/20.
//  Copyright © 2020 Dayal ND. All rights reserved.
//

import UIKit
import WebKit

class secretaryTVC: UIViewController,WKNavigationDelegate {
    
    @IBOutlet var webView: WKWebView!
    @IBOutlet var activity: UIActivityIndicatorView!

    override func viewDidLoad() {
        super.viewDidLoad()
    let myURL = URL(string:"https://www.fogsi.org/wp-content/uploads/member/secretary-list-2020.pdf")
    let myRequest = URLRequest(url: myURL!)
                 webView.load(myRequest)
                     
    self.webView.addSubview(self.activity)
    self.activity.startAnimating()
    self.webView.navigationDelegate = self
    self.activity.hidesWhenStopped = true
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activity.stopAnimating()
    }

    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        activity.stopAnimating()
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
