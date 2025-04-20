//
//  TaskDetailsViewController.swift
//  To Do list
//
//  Created by Pooria Khosravi on 7/26/1403 AP.
//

import UIKit

class TaskDetailsViewController: UIViewController {
    var selectedCellName: String?
    var selectedCellDescription : String?
    override func viewDidLoad() {
        super.viewDidLoad()
        nameOfTaskLabel.text = selectedCellName
        descriptionOfTaskLabel.text = selectedCellDescription
        descriptionOfTaskLabel.contentMode = .topLeft
        descriptionOfTaskLabel.lineBreakMode = .byWordWrapping
     
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var nameOfTaskLabel: UILabel!
    
    @IBOutlet weak var descriptionOfTaskLabel: UILabel!
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        
    }
    */

}
