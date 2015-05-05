//
//  ViewController3.swift
//  iChode
//
//  Created by Arya Seghatoleslami on 4/28/15.
//  Copyright (c) 2015 Aryzle. All rights reserved.
//

import UIKit



class ViewController3: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return workoutArray[activeMuscle].count
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell2")
        
        cell.textLabel?.text = workoutArray[activeMuscle][indexPath.row]
        
        return cell
        
    }
    
    func tableView(tableView: UITableView, willSelectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath? {
        activeWorkout = indexPath.row
        self.performSegueWithIdentifier("expandWorkout" , sender: indexPath)
        return indexPath
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
