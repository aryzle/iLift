//
//  ViewController4.swift
//  iChode
//
//  Created by Thomas Yang on 5/4/15.
//  Copyright (c) 2015 Aryzle. All rights reserved.
//

import UIKit

class ViewController4: UIViewController {

    @IBOutlet weak var workoutTitle: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        workoutTitle.text = workoutArray[activeMuscle][activeWorkout]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
