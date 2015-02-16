//
//  TaskViewController.swift
//  Weekly Reminders
//
//  Created by Austen Allred on 2/1/15.
//  Copyright (c) 2015 Austen Allred. All rights reserved.
//

import UIKit

class TaskTableViewController: UITableViewController, UITextFieldDelegate {
    
    @IBOutlet var taskOneLabel: UILabel!
    @IBOutlet var taskTwoLabel: UILabel!
    @IBOutlet var taskThreeLabel: UILabel!
    @IBOutlet var taskFourLabel: UILabel!
    
    @IBOutlet var taskOneField: UITextField!
    @IBOutlet var taskTwoField: UITextField!
    @IBOutlet var taskThreeField: UITextField!
    @IBOutlet var taskFourField: UITextField!
    
    override func viewDidLoad() {
    super.viewDidLoad()
    var roleOne = NSUserDefaults.standardUserDefaults().objectForKey("roleOne")!.lowercaseString
    var roleTwo = NSUserDefaults.standardUserDefaults().objectForKey("roleTwo")!.lowercaseString
    var roleThree = NSUserDefaults.standardUserDefaults().objectForKey("roleThree")!.lowercaseString
    var roleFour = NSUserDefaults.standardUserDefaults().objectForKey("roleFour")!.lowercaseString
        
    NSUserDefaults.standardUserDefaults().synchronize()
    taskOneLabel.text = "What can you do to be a better \(roleOne) this week?"
    taskTwoLabel.text = "What can you do to be a better \(roleTwo) this week?"
    taskThreeLabel.text = "What can you do to be a better \(roleThree) this week?"
    taskFourLabel.text = "What can you do to be a better \(roleFour) this week?"
        
    tableView.rowHeight = UITableViewAutomaticDimension
    tableView.estimatedRowHeight = 44.0
    }
    
    @IBAction func submitButton() {
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if (segue.identifier == "goalSegue") {
            var svc = segue.destinationViewController as ReminderViewController;
            svc.goalOne = taskOneField.text.lowercaseString
            svc.goalTwo = taskTwoField.text.lowercaseString
            svc.goalThree = taskThreeField.text.lowercaseString
            svc.goalFour = taskFourField.text.lowercaseString
        }
    }
    
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        
        return true
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        if textField == taskOneField {
            taskTwoField.becomeFirstResponder()
        }
        
        if textField == taskTwoField {
            taskThreeField.becomeFirstResponder()
        }
        
        if textField == taskThreeField {
            taskFourField.becomeFirstResponder()
        }
        
        if textField == taskFourField {
            taskFourField.resignFirstResponder()
        }
        
        return true
    }
}
