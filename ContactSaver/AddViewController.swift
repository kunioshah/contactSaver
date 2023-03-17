//
//  AddViewController.swift
//  ContactSaver
//
//  Created by Kunal Shah on 2/28/23.
//

import UIKit

class AddViewController: UIViewController {
    
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    
    var addedName: String = "Bob"
    var addedNumber: String = "12351235"
    var addedEmail: String = "bobsmith@mail.com"
    
    @IBAction func nameEditingEnd(_ sender: Any) {
        addedName = nameTextField.text!
        print(addedName)
    }
    
    @IBAction func phoneEditingEnd(_ sender: Any) {
        addedNumber = numberTextField.text!
        print(addedNumber)
    }
    
    @IBAction func emailEditingEnd(_ sender: Any) {
        addedEmail = emailTextField.text!
        print(addedEmail)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is ViewController {
            let viewController = segue.destination as? ViewController
            viewController?.contacts.append(Contact(name: nameTextField.text!, phoneNumber: numberTextField.text!, email: emailTextField.text!))
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(emailTextField.text!)
    }

}
