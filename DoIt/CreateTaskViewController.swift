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
        
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func addTapped(_ sender: Any) {
        //create a Task from the outlet information
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let task = Task(context: context)
        
        task.name = taskName.text!
        task.important = importantSwitch.isOn
        
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        
        //Pop back
    
   
        navigationController!.popViewController(animated: true)
        
    }
    
    


}
