//
//  ViewController.swift
//  DoIt
//
//  Created by Belle Noble on 2/11/2016.
//  Copyright © 2016 Belle Noble. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var tasks : [Task] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    tasks = makeTasks()
        
    tableView.dataSource = self
    tableView.delegate = self
    
 
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
        
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let task = tasks[indexPath.row]
        if task.important {
               cell.textLabel?.text = "❗️\(task.name)"
        } else {
               cell.textLabel?.text = task.name
        }
    
        return cell
    }
    
    func makeTasks() -> [Task] {
        let task1 = Task()
        task1.name = "Walk the dog"
        task1.important = false
        
        let task2 = Task()
        task2.name = "Yoga"
        task2.important = true
        
        let task3 = Task()
        task3.name = "Breakfast"
        task3.important = false
    
        return [task1, task2, task3]
    
    }
    
}

