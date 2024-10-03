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
     
        self.view.backgroundColor = .white
                
        if let contact = contact {
            detailsScreen.configure(with: contact)
        }
    }
    
    

}
