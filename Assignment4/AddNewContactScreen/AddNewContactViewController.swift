//
//  AddNewContactViewController.swift
//  Assignment4
//
//  Created by Esha Chiplunkar on 10/2/24.
//

import UIKit

class AddNewContactViewController: UIViewController {
    
    var delegate: ViewController!
    
    let addContactScreen = AddNewContactView()
        
    override func loadView() {
        view = addContactScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Add a New Contact"

        addContactScreen.phoneType.delegate = self
        addContactScreen.phoneType.dataSource = self
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            barButtonSystemItem: .save, target: self,
            action: #selector(onSaveBarButtonTapped)
        )
    }
    
    @objc func onSaveBarButtonTapped(){
        if checkEmptyFields() {
            showAlertForEmptyFields()
            return
        }
        
        if !isValidPhoneNumber() {
            showAlertForInvalidPhone()
            return
        }
        
        if let city = addContactScreen.cityTextField.text {
            if !isValidCityState(city) {
                showAlertForInvalidCityState()
                return
            }
        }
        
        if let email = addContactScreen.emailTextField.text {
            if !isValidEmail(email) {
                showAlertForInvalidEmail()
                return
            }
        }
        
        if let zipcode = addContactScreen.zipTextField.text {
            if !isValidZip(zipcode) {
                showAlertForInvalidZip()
                return
            }
        }
        
        let name = addContactScreen.nameTextField.text
        let email = addContactScreen.emailTextField.text
        let phone = addContactScreen.phnoTextField.text
        
        let selectedIndex = addContactScreen.phoneType.selectedRow(inComponent: 0)
        let phoneType = Utilities.typesOfPhones[selectedIndex]
        
        let address = addContactScreen.addressTextField.text
        let city = addContactScreen.cityTextField.text
        let zip = addContactScreen.zipTextField.text
        
        
        let newContact = Contact(name: name, email: email, phone: phone, typeOfPhone: phoneType, address: address, city: city, zip: zip)
        delegate.delegateOnAddContact(contact: newContact)
        navigationController?.popViewController(animated: true)
    }
    
    func isValidEmail(_ email: String) -> Bool {
        let regEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

        let emailPred = NSPredicate(format:"SELF MATCHES %@", regEx)
        return emailPred.evaluate(with: email)
    }
    
    func isValidZip(_ zipCode: String) -> Bool {
        let zipRegex = "^[0-9]{5}$"
        let zipPred = NSPredicate(format: "SELF MATCHES %@", zipRegex)
            
        if zipPred.evaluate(with: zipCode) {
                // Convert to integer and check the range
                if let zipCodeInt = Int(zipCode), zipCodeInt >= 1 && zipCodeInt <= 99950 {
                    return true
                }
            }
            return false
    }
    
    func checkEmptyFields() -> Bool {
        if addContactScreen.nameTextField.text?.isEmpty == true ||
            addContactScreen.emailTextField.text?.isEmpty == true ||
            addContactScreen.phnoTextField.text?.isEmpty == true ||
            addContactScreen.addressTextField.text?.isEmpty == true ||
            addContactScreen.cityTextField.text?.isEmpty == true ||
            addContactScreen.zipTextField.text?.isEmpty == true {
            return true
        }
        return false
    }
    
    func isValidPhoneNumber() -> Bool {
        if let phno = addContactScreen.phnoTextField.text, phno.count != 10 {
            return false
        }
        return true;
    }
    
    func isValidCityState(_ cityState: String) -> Bool {
        let parts = cityState.split(separator: ",")
        return parts.count == 2 && !parts[0].isEmpty && !parts[1].isEmpty
    }
    
    func showAlertForInvalidEmail() {
        let alert = UIAlertController(title: "Error!", message: "Invalid Email Id!", preferredStyle: .alert)
            
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            
        present(alert, animated: true)
    }
    
    func showAlertForInvalidZip() {
        let alert = UIAlertController(title: "Error!", message: "Invalid Zip code!", preferredStyle: .alert)
            
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            
        present(alert, animated: true)
    }
    
    func showAlertForEmptyFields() {
        let alert = UIAlertController(title: "Error!", message: "All fields are mandatory!", preferredStyle: .alert)
            
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            
        present(alert, animated: true)
    }
    
    func showAlertForInvalidPhone() {
        let alert = UIAlertController(title: "Error!", message: "Invalid Phone number!", preferredStyle: .alert)
            
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            
        present(alert, animated: true)
    }
    
    func showAlertForInvalidCityState() {
        let alert = UIAlertController(title: "Error!", message: "Please enter in City, State format!", preferredStyle: .alert)
            
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            
        present(alert, animated: true)
    }

}

extension AddNewContactViewController: UIPickerViewDelegate, UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        //MARK: we are displaying the options from Utilities.types...
        return Utilities.typesOfPhones.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Utilities.typesOfPhones[row]
    }
}
