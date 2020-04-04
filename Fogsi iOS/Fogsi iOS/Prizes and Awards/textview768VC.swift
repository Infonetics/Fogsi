//
//  textview768VC.swift
//  Fogsi iOS
//
//  Created by Dayal ND on 03/04/20.
//  Copyright © 2020 Dayal ND. All rights reserved.
//

import UIKit

class textview768VC: UIViewController {

    @IBOutlet var textviewheading: UILabel!
    @IBOutlet var textview3: UITextView!
    @IBOutlet var label: UILabel!
    var dict1:[String:String]?
    var strings:[String] = []

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    let texthead = dict1?["name"]
    let text = dict1?["text"]
    textview3.text = text
    textviewheading.text = texthead

 
    }

  /*  override func viewDidLayoutSubviews() {

        super.viewDidLayoutSubviews()

        let contentSize = self.textview3.sizeThatFits(self.textview3.bounds.size)
        var frame = self.textview3.frame
        frame.size.height = contentSize.height
        self.textview3.frame = frame

        aspectratiocc = NSLayoutConstraint(item: self.textview3 as Any, attribute: .height, relatedBy: .equal, toItem: self.textview3, attribute: .width, multiplier: textview3.bounds.height/textview3.bounds.width, constant: 1)
        self.textview3.addConstraint(aspectratiocc!)

    }
 */
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
