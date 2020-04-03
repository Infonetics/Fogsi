//
//  fogsi2020TVCell.swift
//  Fogsi iOS
//
//  Created by Dayal ND on 02/04/20.
//  Copyright © 2020 Dayal ND. All rights reserved.
//

import UIKit
import WebKit

class fogsi2020TVCell: UITableViewCell,WKNavigationDelegate {

    @IBOutlet var activity: UIActivityIndicatorView!
    @IBOutlet var webView: WKWebView!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.webView.addSubview(self.activity)
        self.activity.startAnimating()
        self.webView.navigationDelegate = self
        self.activity.hidesWhenStopped = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
     func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
         activity.stopAnimating()
     }

     func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
         activity.stopAnimating()
     }
    

}
