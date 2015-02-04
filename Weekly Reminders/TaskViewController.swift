//
//  TaskViewController.swift
//  Weekly Reminders
//
//  Created by Austen Allred on 2/1/15.
//  Copyright (c) 2015 Austen Allred. All rights reserved.
//

import UIKit

class TaskViewController: UIViewController {
    var taskOne = ""
    var taskTwo = ""
    var taskThree = ""
    var taskFour = ""
    
    @IBOutlet var taskOneLabel: UILabel!
    @IBOutlet var taskTwoLabel: UILabel!
    @IBOutlet var taskThreeLabel: UILabel!
    @IBOutlet var taskFourLabel: UILabel!
    
    @IBOutlet var taskOneField: UITextField!
    @IBOutlet var taskTwoField: UITextField!
    @IBOutlet var taskThreeField: UITextField!
    @IBOutlet var taskFourField: UITextField!
    
    override func viewDidLoad() {
    taskOneLabel.text = "What can you do to be a better \(taskOne) this week?"
    taskTwoLabel.text = "What can you do to be a better \(taskTwo) this week?"
    taskThreeLabel.text = "What can you do to be a better \(taskThree) this week?"
    taskFourLabel.text = "What can you do to be a better \(taskFour) this week?"
    }
    
    
}
