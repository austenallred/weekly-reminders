//
//  ViewController.swift
//  Weekly Reminders
//
//  Created by Austen Allred on 1/31/15.
//  Copyright (c) 2015 Austen Allred. All rights reserved.
//

import UIKit

class RoleViewController: UIViewController {
    
    @IBOutlet var roleOneField: UITextField!
    @IBOutlet var roleTwoField: UITextField!
    @IBOutlet var roleThreeField: UITextField!
    @IBOutlet var roleFourField: UITextField!
    @IBAction func submitRolesButton() {
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if (segue.identifier == "roleSegue") {
            var svc = segue.destinationViewController as TaskViewController;
            svc.taskOne = roleOneField.text.lowercaseString
            svc.taskTwo = roleTwoField.text.lowercaseString
            svc.taskThree = roleThreeField.text.lowercaseString
            svc.taskFour = roleFourField.text.lowercaseString
        }
    }
}

