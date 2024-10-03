//
//  DetailsView.swift
//  Assignment4
//
//  Created by Esha Chiplunkar on 10/2/24.
//

import UIKit

class DetailsView: UIView {

    var nameLabel : UILabel!
    var emailLabel : UILabel!
    var phnoLabel : UILabel!
    var addressLabel : UILabel!
    var cityLabel : UILabel!
    var zipLabel : UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .white
        
        setUpNameLabel()
        setUpEmailLabel()
        setUpPhoneLabel()
        setUpAddressLabel()
        setUpCityLabel()
        setUpZipLabel()
        
        initConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpNameLabel() {
        nameLabel = UILabel()
        nameLabel.font = nameLabel.font.withSize(18)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(nameLabel)
    }
    
    func setUpEmailLabel() {
        emailLabel = UILabel()
        emailLabel.font = emailLabel.font.withSize(18)
        emailLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(emailLabel)
    }
    
    func setUpPhoneLabel() {
        phnoLabel = UILabel()
        phnoLabel.font = phnoLabel.font.withSize(18)
        phnoLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(phnoLabel)
    }
    
    func setUpAddressLabel() {
        addressLabel = UILabel()
        addressLabel.font = addressLabel.font.withSize(18)
        addressLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(addressLabel)
    }
    
    func setUpCityLabel() {
        cityLabel = UILabel()
        cityLabel.font = cityLabel.font.withSize(18)
        cityLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(cityLabel)
    }
    
    func setUpZipLabel() {
        zipLabel = UILabel()
        zipLabel.font = zipLabel.font.withSize(18)
        zipLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(zipLabel)
    }
    
    func initConstraints() {
        NSLayoutConstraint.activate([
            nameLabel.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            nameLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 18),
            
            emailLabel.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            emailLabel.topAnchor.constraint(equalTo: nameLabel.topAnchor, constant: 36),
            
            phnoLabel.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            phnoLabel.topAnchor.constraint(equalTo: emailLabel.topAnchor, constant: 36),
            
            addressLabel.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            addressLabel.topAnchor.constraint(equalTo: phnoLabel.topAnchor, constant: 36),
            
            cityLabel.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            cityLabel.topAnchor.constraint(equalTo: addressLabel.topAnchor, constant: 36),
            
            zipLabel.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            zipLabel.topAnchor.constraint(equalTo: cityLabel.topAnchor, constant: 36),
            
        ])
    }

}
