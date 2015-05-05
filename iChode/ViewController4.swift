//
//  ViewController4.swift
//  iChode
//
//  Created by Thomas Yang on 5/4/15.
//  Copyright (c) 2015 Aryzle. All rights reserved.
//

import UIKit

var setN = 3
var repN = 6


class ViewController4: UIViewController {
    //title of the selected Workout
    @IBOutlet weak var workoutTitle: UILabel!
    
    //Stepper for Sets
    @IBOutlet weak var setButtonValue: UIStepper!
    @IBOutlet weak var setLabel: UILabel!
    @IBAction func setButton(sender: AnyObject) {
        self.setLabel.text = Int(self.setButtonValue.value).description
    }
    
    //Stepper for Reps
    @IBOutlet weak var repLabel: UILabel!
    @IBOutlet weak var repButtonValue: UIStepper!
    @IBAction func repButton(sender: AnyObject) {
        self.repLabel.text = Int(self.repButtonValue.value).description
    }
    
    //Slider for Weight
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var weightSliderValue: UISlider!
    @IBAction func weightSliderChange(sender: AnyObject) {
        weightLabel.text = String(stringInterpolationSegment: Int(weightSliderValue.value * 300)) + " lbs"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        workoutTitle.text = workoutArray[activeMuscle][activeWorkout]
        
        setButtonValue.value = Double(setN)
        setButtonValue.wraps = false
        setButtonValue.autorepeat = false
        setButtonValue.maximumValue = 9
        
        repButtonValue.value = Double(repN)
        repButtonValue.wraps = false
        repButtonValue.autorepeat = false
        repButtonValue.maximumValue = 15
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
