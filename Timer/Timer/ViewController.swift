//
//  ViewController.swift
//  Timer
//
//  Created by Alperen Çerkez on 7.11.2024.
//

import UIKit

class ViewController: UIViewController {

    var timer: Timer?
    let timerDuration = 2.5
    var runningCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //timer = Timer.scheduledTimer(withTimeInterval: timerDuration, repeats: true, block: timesUp)
        timer = Timer.scheduledTimer(timeInterval: timerDuration, target: self, selector: #selector(timesUp2), userInfo: nil, repeats: true)
    }
    
    func timesUp(t: Timer) {
        print("Time is up!")
        
        runningCount += 1
        
        if runningCount == 3 {
            timer?.invalidate()
        }
    }
    
    @objc func timesUp2() {
        print("Time is up!")
        
        runningCount += 1
        
        if runningCount == 3 {
            timer?.invalidate()
        }
    }

}

