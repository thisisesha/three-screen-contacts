//
//  AddNewContactViewController.swift
//  Assignment4
//
//  Created by Esha Chiplunkar on 10/2/24.
//

import UIKit

class AddNewContactViewController: UIViewController {
    
    var delegate: ViewController!
    
    var selectedType = "Cell"
    
    let addContactScreen = AddNewContactView()
        
    override func loadView() {
        view = addContactScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        addContactScreen.phoneType.delegate = self
        addContactScreen.phoneType.dataSource = self
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
        
        selectedType = Utilities.typesOfPhones[row]
        return Utilities.typesOfPhones[row]
    }
}
