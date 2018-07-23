//
//  ViewController.swift
//  swiftLecture03
//
//  Created by stu1 on 2018/7/22.
//  Copyright © 2018年 tripim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    
    @IBOutlet weak var lbName: UILabel!
    

    @IBOutlet weak var scoreSlider: UISlider!
    @IBOutlet weak var switchStatus: UISwitch!
    
    @IBOutlet weak var addScoreStepper: UIStepper!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.


    }

    @IBAction func btnConfimClicked(_ sender: Any) {
        lbName.text = " 欢迎使用！！！！"
        let button = sender as! UIButton
        button.setTitle("OK", for: UIControl.State.normal)
    }
    
    @IBAction func switchStatus(_ sender: Any) {
        
        print("\(switchStatus.isOn)")
    }
    

    
    @IBAction func scoreSliderChanged(_ sender: Any) {
        lbName.text = "change :\( Float (scoreSlider.value) )"
        addScoreStepper.value = Double (scoreSlider.value)
        print("\(scoreSlider.value)")
    }
            
    @IBAction func stepperChanged(_ sender: Any) {
        lbName.text = "change :\( Float (addScoreStepper.value) )"
        scoreSlider.value = Float(addScoreStepper.value)
        print("\(addScoreStepper.value)")
    }
        
    
    
}

