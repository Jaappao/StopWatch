//
//  ViewController.swift
//  StopWatch
//
//  Created by 二本松秀樹 on 2021/02/07.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    
    var count: Float = 0.0
    
    var timer: Timer = Timer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func start() {
        if !timer.isValid {
            timer = Timer.scheduledTimer(timeInterval: 0.01,
                                         target: self,
                                         selector: #selector(self.up),
                                         userInfo: nil,
                                         repeats: true
            )
        }
    }

    @IBAction func stop() {
        if timer.isValid {
            timer.invalidate()
        }
    }
    
    @objc func up() {
        count = count + 0.01
        label.text = String(format: "%.2f", count)
    }

}

