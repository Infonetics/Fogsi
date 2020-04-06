//
//  webVideoVC.swift
//  Fogsi iOS
//
//  Created by Dayal ND on 06/04/20.
//  Copyright © 2020 Dayal ND. All rights reserved.
//

import UIKit
import WebKit

class webVideoVC: UIViewController,WKNavigationDelegate {
    
    @IBOutlet var webView: WKWebView!
    
    @IBOutlet var activity: UIActivityIndicatorView!
    
    var selectedwebsite:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.webView.addSubview(self.activity)
        self.activity.startAnimating()
        self.webView.navigationDelegate = self
        self.activity.hidesWhenStopped = true
        
        
        let urlstring = "https://www.youtube.com/embed/" + selectedwebsite!
        let urlString = URL(string: urlstring )
        webView.load(URLRequest(url: urlString!))
        

        
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activity.stopAnimating()
    }

    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        activity.stopAnimating()
    }


}
