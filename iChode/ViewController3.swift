//
//  ViewController3.swift
//  iChode
//
//  Created by Arya Seghatoleslami on 4/28/15.
//  Copyright (c) 2015 Aryzle. All rights reserved.
//

import UIKit

var workoutArray = [
    ["Bench-Press","Dumbell-Fly","Cable-Fly","Dumbell-Press","Dips","Push-Ups"],
    
    ["Wide-Grip-Lat-Pull-Down","Dumbell-Rows","Pull-Ups", "Chin-Ups", "Reverse-Dumbell-Flies"],
    
    ["Dumbell-Preacher-Curls", "Dumbell-Hammer-Curls", "Standing-Bar-Curls", "Chin-Ups"],
    
    ["Dumbell-Skull-Crushers", "Tricep-Rope", "Dips", "Behind-the-Head-Dumbell-Lifts", "Bench-Press"],
    
    ["Arnold-Dumbell-Press", "Military-Press", "Shoulder-Shrugs", "Lateral-Dumbell-Raises", "Dips"],

    ["Squat", "Deadlift", "Leg-Curl", "Calf-Raises", "Leg-Extensions", "Cardio - JK NEVER DO CARDIO"]]

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
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
