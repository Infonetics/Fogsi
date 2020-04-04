//
//  webviewTrainingVC.swift
//  Fogsi iOS
//
//  Created by Dayal ND on 04/04/20.
//  Copyright © 2020 Dayal ND. All rights reserved.
//

import UIKit
import WebKit

class webviewTrainingVC: UIViewController,WKNavigationDelegate {
    
    @IBOutlet var webVie: WKWebView!
    @IBOutlet var activity: UIActivityIndicatorView!
    var selectedwebsite:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    let website = selectedwebsite
    let myURL = URL(string: website! )
    let myRequest = URLRequest(url: myURL!)
    webVie.load(myRequest)
                    
    self.webVie.addSubview(self.activity)
    self.activity.startAnimating()
    self.webVie.navigationDelegate = self
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
