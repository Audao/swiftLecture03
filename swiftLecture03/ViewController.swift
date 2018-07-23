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
    
    @IBOutlet weak var touchView: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnConfimClicked(_ sender: Any) {
        lbName.text = " 欢迎使用！！！！"
        let button = sender as! UIButton
        button.setTitle("OK", for: UIControl.State.normal)
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
     print("touchesBegan")
        if let touch = touches.first {
            let loc = touch.location(in: self.touchView)
            
            print("\( loc )")
            if( self.touchView.frame.contains(loc) ){
                self.touchView.backgroundColor = UIColor.red
            }else{
                self.touchView.backgroundColor = UIColor.blue
            }
            
        }
        
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touchesEnded")
    }
}

