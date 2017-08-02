//
//  ViewController.swift
//  pamper
//
//  Created by 김민서 on 2017. 8. 2..
//  Copyright © 2017년 김민서. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {

    @IBOutlet weak var number: UILabel!
    @IBOutlet weak var btnStart: UIButton!
    @IBOutlet weak var btnStop: UIButton!
    @IBOutlet weak var btnReset: UIButton!
    
    var isOn = false
    var num = 0
    
    var motion = CMMotionManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func viewDidAppear(_ animated: Bool) {
        if isOn == true {
        motion.gyroUpdateInterval = 0.2
        motion.startGyroUpdates(to: OperationQueue.current!) { (data, error) in
            if let myData = data {
                print(myData.rotationRate)
            }
        }
        
    }
    
    

}
    
    @IBAction func start(_ sender: Any) {
        var isOn = true
        btnStop.isEnabled = true
        btnStart.isEnabled = false
    }
    
    @IBAction func stop(_ sender: Any) {
        var isOn = false
        btnStart.isEnabled = true
        btnStop.isEnabled = false
    }
    
    @IBAction func reset(_ sender: Any) {
        num = 0
    }

}
