//
//  ViewController.swift
//  BirthdayTracker
//
//  Created by Vodnikova Daria Konstantinovna on 23.07.2022.


// cmd+0 - navigator show/hide
// ⌘-option-0 - utilities hide/show
// Object Library - Shift + Command + L

import UIKit

protocol AddBirthdayViewControllerDelegate {
    func addBirthdayViewController(_ addBirthdayViewController: AddBirthdayViewController, didAddBirthday birthday: Birthday)
}


class AddBirthdayViewController: UIViewController {

    
    
    @IBOutlet var firstNameTextField: UITextField! // как тип данных мб опционалом?
    @IBOutlet var lastNameTextField: UITextField! // interface builder
    @IBOutlet var birthdatePicker: UIDatePicker!
    
    var delegate: AddBirthdayViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        birthdatePicker.maximumDate = Date()
        
    }
    
    @IBAction func saveTapped(_ sender: UIBarButtonItem) {
    print("Нажата кнопка сохранения.")
        
        let firstName = firstNameTextField.text ?? "None"
        let lastName = lastNameTextField.text ?? "None"
        let birthdate = birthdatePicker.date
      
        let newBirthday = Birthday(firstName: firstName, lastName: lastName, birthdate: birthdate)
        print("Создана запись о дне рождения!")
        print("Имя: \(newBirthday.firstName)")
        print("Фамилия: \(newBirthday.lastName)")
        print("День рождения: \(newBirthday.birthdate)")
        
        delegate?.addBirthdayViewController(self, didAddBirthday: newBirthday)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancelTapped(_ sender: UIBarButtonItem){
        dismiss(animated: true)
    }


}

