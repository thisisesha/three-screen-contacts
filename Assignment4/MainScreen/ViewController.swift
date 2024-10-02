//
//  ViewController.swift
//  Assignment4
//
//  Created by Esha Chiplunkar on 10/2/24.
//

import UIKit

class ViewController: UIViewController {
    
    let mainScreen = MainScreenView()
    
    var contacts = [Contact]()
        
    override func loadView() {
        view = mainScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "My Contacts"
        
        mainScreen.tableViewContacts.dataSource = self
        mainScreen.tableViewContacts.delegate = self
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            barButtonSystemItem: .add, target: self,
            action: #selector(onAddBarButtonTapped)
        )
        
    }
    
    @objc func onAddBarButtonTapped(){
        let addContactController = AddNewContactViewController()
        addContactController.delegate = self
        navigationController?.pushViewController(addContactController, animated: true)
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contacts", for: indexPath) as! TableViewContactsCell
        cell.labelName.text = contacts[indexPath.row].name
        cell.labelEmail.text = contacts[indexPath.row].email
        if let uwPhone = contacts[indexPath.row].phone, let uwType = contacts[indexPath.row].typeOfPhone {
            cell.labelPhone.text = uwPhone + " (" + uwType + ")"
        }
        return cell
    }
    
}

