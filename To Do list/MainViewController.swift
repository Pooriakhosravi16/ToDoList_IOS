//
//  MainViewController.swift
//  To Do list
//
//  Created by Pooria Khosravi on 7/25/1403 AP.
//

import UIKit
    
class MainViewController: UIViewController ,UITableViewDelegate ,UITableViewDataSource {
    @IBAction func myUnwindAction(unwindSegue: UIStoryboardSegue){
        myTableView.reloadData()
    }
    @IBOutlet weak var myTableView: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return database.fetchTasks().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell" , for: indexPath)
        let task = database.fetchTasks()[indexPath.row]
        cell.textLabel!.text = task.taskName
        cell.detailTextLabel!.text = task.taskDescription
        
        return cell
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let task = database.fetchTasks()[indexPath.row]
            database.deleteTask(name: task.taskName!)
                    
        myTableView.deleteRows(at: [indexPath], with: .automatic)
    }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    @IBAction func addtaskButton(_ sender: UIButton) {
        
        performSegue(withIdentifier: "AddTask", sender: nil)
        
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            if let destinationVC = segue.destination as? TaskDetailsViewController,
               let indexPath = myTableView.indexPathForSelectedRow {
                destinationVC.selectedCellName = database.fetchTasks()[indexPath.row].taskName
                destinationVC.selectedCellDescription = database.fetchTasks()[indexPath.row].taskDescription
            }
        }
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
