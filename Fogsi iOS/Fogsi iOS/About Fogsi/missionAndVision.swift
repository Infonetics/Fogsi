//
//  missionAndVision.swift
//  Fogsi iOS
//
//  Created by Dayal ND on 28/03/20.
//  Copyright © 2020 Dayal ND. All rights reserved.
//

import UIKit

class missionAndVision: UIViewController {

    @IBOutlet var scrollview: UIScrollView!
    @IBOutlet var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

     self.scrollview.contentLayoutGuide.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
     //textView.isScrollEnabled = false
    
        // Do any additional setup after loading the view.
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
