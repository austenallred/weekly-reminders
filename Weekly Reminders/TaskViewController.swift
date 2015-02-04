//
//  TaskViewController.swift
//  Weekly Reminders
//
//  Created by Austen Allred on 2/1/15.
//  Copyright (c) 2015 Austen Allred. All rights reserved.
//

import UIKit

class TaskViewController: UIViewController {
    
    @IBOutlet var taskOneLabel: UILabel!
    @IBOutlet var taskTwoLabel: UILabel!
    @IBOutlet var taskThreeLabel: UILabel!
    @IBOutlet var taskFourLabel: UILabel!
    
    @IBOutlet var taskOneField: UITextField!
    @IBOutlet var taskTwoField: UITextField!
    @IBOutlet var taskThreeField: UITextField!
    @IBOutlet var taskFourField: UITextField!
    
    override func viewDidLoad() {
    taskOneLabel.text = "This is the label I want to change to whatever was input as or whatever"
    }
    
    
}
