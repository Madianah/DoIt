//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by Madiana Hedayet on 6/21/17.
//  Copyright © 2017 Madiana Hedayet. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    
    @IBOutlet weak var taskName: UITextField!
    
    
    @IBOutlet weak var importantSwitch: UISwitch!
    
    var previousVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func addTapped(_ sender: Any) {
        //create a Task from the outlet information
        let task = Task()
        
        task.name = taskName.text!
        task.important = importantSwitch.isOn
        
        
        //Add new task to array in previous viewcontroller
        
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
        
    }
    
    


}
