//
//  ReminderViewController.swift
//  Weekly Reminders
//
//  Created by Austen Allred on 2/4/15.
//  Copyright (c) 2015 Austen Allred. All rights reserved.
//

import UIKit

class ReminderViewController: UIViewController {
    var roleOne = NSUserDefaults.standardUserDefaults().objectForKey("roleOne")!.capitalizedString
    var roleTwo = NSUserDefaults.standardUserDefaults().objectForKey("roleTwo")!.capitalizedString
    var roleThree = NSUserDefaults.standardUserDefaults().objectForKey("roleThree")!.capitalizedString
    var roleFour = NSUserDefaults.standardUserDefaults().objectForKey("roleFour")!.capitalizedString
    
    var goalOne = "a"
    var goalTwo = "b"
    var goalThree = "c"
    var goalFour = "d"
    
    @IBOutlet var labelOne: UILabel!
    @IBOutlet var labelTwo: UILabel!
    @IBOutlet var labelThree: UILabel!
    @IBOutlet var labelFour: UILabel!
    @IBOutlet var datePicker: UIDatePicker!
    @IBAction func setDatePicker(sender: AnyObject) {
    }
    
    override func viewDidLoad() {
        NSUserDefaults.standardUserDefaults().synchronize()
        labelOne.text = "\(roleOne): \(goalOne.capitalizedString)"
        labelTwo.text = "\(roleTwo): \(goalTwo.capitalizedString)"
        labelThree.text = "\(roleThree): \(goalThree.capitalizedString)"
        labelFour.text = "\(roleFour): \(goalFour.capitalizedString)"
    }
    
    @IBAction func scheduleReminder() {
        
    }
    
    @IBAction func reminderDateChange(sender: UIDatePicker) {
    }
    
    
    @IBAction func sendReminder(sender: AnyObject) {
        var localNotification = UILocalNotification()
        localNotification.fireDate = NSDate(timeIntervalSinceNow: 5)
        localNotification.alertBody = "How did you do this week? Check out your goals!"
        localNotification.timeZone = NSTimeZone.defaultTimeZone()
        localNotification.applicationIconBadgeNumber = UIApplication.sharedApplication().applicationIconBadgeNumber + 1
        
        UIApplication.sharedApplication().scheduleLocalNotification(localNotification)
    }
}
