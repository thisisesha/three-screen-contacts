//
//  DetailsViewController.swift
//  Assignment4
//
//  Created by Esha Chiplunkar on 10/2/24.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var contact: Contact?
    
    let detailsScreen = DetailsView()
    
    override func loadView() {
        view = detailsScreen
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Contact Details"
     
        if let contact = contact {
            detailsScreen.nameLabel.text = "\(contact.name ?? "")"
            detailsScreen.emailLabel.text = "Email: \(contact.email ?? "")"
            detailsScreen.phnoLabel.text = "Phone: \(contact.phone ?? "") (\(contact.typeOfPhone ?? ""))"
            
            
                
         //   detailsScreen.addressLabel.attributedText = attributedText
            detailsScreen.addressLabel.text = "Address: \(contact.address ?? "")"
            detailsScreen.cityLabel.text = "\(contact.city ?? "")"
            detailsScreen.zipLabel.text = "\(contact.zip ?? "")"
        }
    }
    
    

}
