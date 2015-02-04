//
//  ViewController.swift
//  Weekly Reminders
//
//  Created by Austen Allred on 1/31/15.
//  Copyright (c) 2015 Austen Allred. All rights reserved.
//

import UIKit

class RoleViewController: UIViewController {
   
    var roleOne = ""
    var roleTwo = ""
    var roleThree = ""
    var roleFour = ""
    
    var whatever = "monkey"
    
    
    @IBOutlet var roleOneField: UITextField!
    @IBOutlet var roleTwoField: UITextField!
    @IBOutlet var roleThreeField: UITextField!
    @IBOutlet var roleFourField: UITextField!
    
//    override func override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        if (segue.identifier == "RoleItem") {
//            let navigationController = segue.destinationViewController as UINavigationController
//            var controller = navigationController.topViewController as RoleViewController
//            controller.delegate = self
//        }
//    }
    
    @IBAction func submitRolesButton() {
        roleOne = roleOneField.text.lowercaseString
        roleTwo = roleTwoField.text.lowercaseString
        roleThree = roleThreeField.text.lowercaseString
        roleFour = roleFourField.text.lowercaseString
        println("Role One Is \(roleOne)")
        println("Role Two Is \(roleTwo)")
        println("Role Three Is \(roleThree)")
        println("Role Four Is \(roleFour)")
    }
}

