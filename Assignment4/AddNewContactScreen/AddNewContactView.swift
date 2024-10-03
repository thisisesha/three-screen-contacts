//
//  AddNewContactView.swift
//  Assignment4
//
//  Created by Esha Chiplunkar on 10/2/24.
//

import UIKit

class AddNewContactView: UIView {

    var nameTextField : UITextField!
    var emailTextField : UITextField!
    var addPhoneLabel : UILabel!
    var phoneType : UIPickerView!
    var phnoTextField : UITextField!
    var addressTextField : UITextField!
    var cityTextField : UITextField!
    var zipTextField : UITextField!

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .white
        
        setUpNameTextField()
        setUpEmailTextField()
        setUpAddPhoneLabel()
        setUpPhoneType()
        setUpPhnoTextField()
        setUpAddressTextField()
        setUpCityTextField()
        setUpZipTextField()
        
        initConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpNameTextField() {
        nameTextField = UITextField()
        nameTextField.placeholder = "Name"
        nameTextField.borderStyle = .roundedRect
        nameTextField.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(nameTextField)
    }


    func setUpEmailTextField() {
        emailTextField = UITextField()
        emailTextField.placeholder = "Email"
        emailTextField.borderStyle = .roundedRect
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(emailTextField)
    }
    
    func setUpAddPhoneLabel() {
        addPhoneLabel = UILabel()
        addPhoneLabel.text = "Add Phone"
        addPhoneLabel.font = addPhoneLabel.font.withSize(20)
        addPhoneLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(addPhoneLabel)
    }
    
    
    func setUpPhoneType() {
        phoneType = UIPickerView()
        phoneType.isUserInteractionEnabled = true
        phoneType.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(phoneType)
    }
    
    func setUpPhnoTextField() {
        phnoTextField = UITextField()
        phnoTextField.placeholder = "Phone number"
        phnoTextField.borderStyle = .roundedRect
        phnoTextField.translatesAutoresizingMaskIntoConstraints = false
        phnoTextField.keyboardType = .phonePad
        self.addSubview(phnoTextField)
    }
    
    func setUpAddressTextField() {
        addressTextField = UITextField()
        addressTextField.placeholder = "Address"
        addressTextField.borderStyle = .roundedRect
        addressTextField.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(addressTextField)
    }
    
    func setUpCityTextField() {
        cityTextField = UITextField()
        cityTextField.placeholder = "City, State"
        cityTextField.borderStyle = .roundedRect
        cityTextField.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(cityTextField)
    }
    
    func setUpZipTextField() {
        zipTextField = UITextField()
        zipTextField.placeholder = "ZIP"
        zipTextField.borderStyle = .roundedRect
        zipTextField.translatesAutoresizingMaskIntoConstraints = false
        zipTextField.keyboardType = .numberPad
        self.addSubview(zipTextField)
        
    }
    
    
    func initConstraints() {
        
        NSLayoutConstraint.activate([
                
            nameTextField.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            nameTextField.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 16),
            nameTextField.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 24),
            nameTextField.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -24),
            
            emailTextField.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            emailTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 16),
            emailTextField.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 24),
            emailTextField.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -24),
            
            addPhoneLabel.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            addPhoneLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 16),
            
            
            phoneType.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            phoneType.topAnchor.constraint(equalTo: addPhoneLabel.bottomAnchor, constant: 16),
            phoneType.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 24),
            phoneType.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -24),
            phoneType.heightAnchor.constraint(equalToConstant: 75),
            
            phnoTextField.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            phnoTextField.topAnchor.constraint(equalTo: phoneType.bottomAnchor, constant: 16),
            phnoTextField.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 24),
            phnoTextField.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -24),
            
            addressTextField.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            addressTextField.topAnchor.constraint(equalTo: phnoTextField.bottomAnchor, constant: 16),
            addressTextField.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 24),
            addressTextField.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -24),
            
            cityTextField.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            cityTextField.topAnchor.constraint(equalTo: addressTextField.bottomAnchor, constant: 16),
            cityTextField.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 24),
            cityTextField.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -24),
            
            zipTextField.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            zipTextField.topAnchor.constraint(equalTo: cityTextField.bottomAnchor, constant: 16),
            zipTextField.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 24),
            zipTextField.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -24),
                
        ])
    }

}
