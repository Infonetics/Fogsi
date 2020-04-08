//
//  photoTVCell.swift
//  Fogsi iOS
//
//  Created by Dayal ND on 06/04/20.
//  Copyright © 2020 Dayal ND. All rights reserved.
//

import UIKit
import WebKit

class photoTVCell: UITableViewCell,WKNavigationDelegate {
    

    @IBOutlet var activity: UIActivityIndicatorView!
    @IBOutlet var imageV: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()

    
     self.activity.startAnimating()

     self.activity.hidesWhenStopped = true
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)


    }

}
