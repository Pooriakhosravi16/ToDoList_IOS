//
//  ViewController.swift
//  To Do list
//
//  Created by Pooria Khosravi on 7/24/1403 AP.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    
    @IBAction func submitButton(_ sender: UIButton) {
        if usernameTextField.text == "pooria" && passwordTextField.text == "1234" {
            performSegue(withIdentifier: "login", sender: self)
        }
        print(database.fetchTasks())
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

