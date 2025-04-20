//
//  AddTaskViewController.swift
//  To Do list
//
//  Created by Pooria Khosravi on 7/25/1403 AP.
//

import UIKit

class AddTaskViewController: UIViewController {
 
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var descriptionText: UITextField!
    

     @IBAction func addTask(_ sender: Any) {
         
         database.insertTask(name: nameTextField.text!, description: descriptionText.text!)
         
    
         
         
     }
    /*  // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func myUnwindAction(unwindSegue: UIStoryboardSegue){}

}
