//
//  FogsiProfile.swift
//  Fogsi iOS
//
//  Created by Dayal ND on 27/03/20.
//  Copyright © 2020 Dayal ND. All rights reserved.
//

import UIKit

class FogsiProfile: UIViewController {

    @IBOutlet var textview: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        textview.backgroundColor = UIColor.init(red: 254/256, green: 163/256, blue: 212/256, alpha: 1)
        
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
