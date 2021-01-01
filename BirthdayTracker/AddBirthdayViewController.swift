//
//  ViewController.swift
//  BirthdayTracker
//
//  Created by ZamiRich on 30.12.2020.
//

import UIKit

class AddBirthdayViewController: UIViewController {

    @IBOutlet var firstNameTextField: UITextField! //this one included manually, other two will link will ctrl + drag from storyboard
    @IBOutlet weak var lastNameTextField: UITextField! //this one was connected with ctrl + drag from storyboard
    @IBOutlet weak var birthdatePicker: UIDatePicker! //ctrl + drag as well
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        birthdatePicker.maximumDate = Date()
    }

    @IBAction func saveTapped(_ sender: UIBarButtonItem) {
        print("The save button was tapped.")
        
        let firstName = firstNameTextField.text ?? ""
        let lastName = lastNameTextField.text ?? ""
        let birthdate = birthdatePicker.date
        
        let newBirthday = Birthday(firstName: firstName, lastName: lastName, birthdate: birthdate)
        
            print("Created a Birthday!")
            print("\(newBirthday.firstName), \(newBirthday.lastName), \(newBirthday.birthdate)")
    }
    
    @IBAction func cancelTapped(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    

}

