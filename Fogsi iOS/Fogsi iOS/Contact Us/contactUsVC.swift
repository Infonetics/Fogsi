//
//  contactUsVC.swift
//  Fogsi iOS
//
//  Created by Dayal ND on 01/04/20.
//  Copyright © 2020 Dayal ND. All rights reserved.
//

import UIKit
import MapKit
import MessageUI

class contactUsVC: UIViewController, MFMailComposeViewControllerDelegate {

    @IBOutlet var mapKitView: MKMapView!
    let regionRadius: CLLocationDistance = 1000
    @IBOutlet var nameText: UITextField!
    @IBOutlet var contactnumberText: UITextField!
    @IBOutlet var yourEmailText: UITextField!
    @IBOutlet var yourMessageText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    let initialLocation = CLLocation(latitude: 19.004921, longitude: 72.827217)
    centerMapOnLocation(location: initialLocation)


        
    }
    

    func centerMapOnLocation(location: CLLocation) {
    let coordinateRegion = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
    mapKitView.setRegion(coordinateRegion, animated: true)
    }

    
    @IBAction func sendEmail(_ sender: Any) {
        
    let toRecipient = ["info@infonetics.org"]
        let mc: MFMailComposeViewController = MFMailComposeViewController()
        mc.mailComposeDelegate = self
        mc.setToRecipients(toRecipient)
        mc.setSubject(nameText.text!)
        mc.setMessageBody("Name: \(nameText.text!) \n\nEmal: \(yourEmailText.text!) \n\nMobile Number: \(contactnumberText.text!) \n\nMessage: \(yourMessageText.text!)", isHTML: false)
        self.present(mc, animated: true, completion: nil)
   
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        
        switch result.rawValue {
        case MFMailComposeResult.cancelled.rawValue:
            print("Cancelled")
            case MFMailComposeResult.failed.rawValue:
            print("Failed")
            case MFMailComposeResult.saved.rawValue:
            print("Saved")
            case MFMailComposeResult.sent.rawValue:
            print("Sent")
        default:
            break
        }
        self.dismiss(animated: true, completion: nil)
    
    }
    
    @IBAction func tap(_ sender: Any) {
        contactnumberText.resignFirstResponder()
        nameText.resignFirstResponder()
        yourEmailText.resignFirstResponder()
        yourMessageText.resignFirstResponder()
    }
    


}
