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
        NSUserDefaults.standardUserDefaults().setObject(roleOneField.text, forKey: "roleOne")
        NSUserDefaults.standardUserDefaults().setObject(roleTwoField.text, forKey: "roleTwo")
        NSUserDefaults.standardUserDefaults().setObject(roleThreeField.text, forKey: "roleThree")
        NSUserDefaults.standardUserDefaults().setObject(roleFourField.text, forKey: "roleFour")
        NSUserDefaults.standardUserDefaults().synchronize()
    }
    
}

