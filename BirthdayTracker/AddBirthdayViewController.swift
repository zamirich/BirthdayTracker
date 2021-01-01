//
//  ViewController.swift
//  BirthdayTracker
//
//  Created by ZamiRich on 30.12.2020.
//

import UIKit

protocol AddBirthdayViewControllerDelegate {
    
    func addBirthdayViewController(_ addBirthdayViewController: AddBirthdayViewController, didAddBirthday birthday: Birthday)
}

class AddBirthdayViewController: UIViewController {

    @IBOutlet var firstNameTextField: UITextField! //this one included manually, other two will link will ctrl + drag from storyboard
    @IBOutlet weak var lastNameTextField: UITextField! //this one was connected with ctrl + drag from storyboard
    @IBOutlet weak var birthdatePicker: UIDatePicker! //ctrl + drag as well
    
    var delegate: AddBirthdayViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        birthdatePicker.maximumDate = Date()
    }

    @IBAction func saveTapped(_ sender: UIBarButtonItem) {
        
        let firstName = firstNameTextField.text ?? ""
        let lastName = lastNameTextField.text ?? ""
        let birthdate = birthdatePicker.date
        
        let newBirthday = Birthday(firstName: firstName, lastName: lastName, birthdate: birthdate)
        
        delegate?.addBirthdayViewController(self, didAddBirthday: newBirthday)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancelTapped(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    

}

