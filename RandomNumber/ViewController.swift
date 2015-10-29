//
//  ViewController.swift
//  RandomNumber
//
//  Created by Taiki Yoshikawa on 2015/10/29.
//  Copyright © 2015年 Taiki Yoshikawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var even_or_odd: UILabel!
    
    @IBAction func startButton(sender: AnyObject) {
        let retNum = Int(arc4random_uniform(50))
        print("Number = \(retNum)")
        
        resultLabel.text = String(retNum)
        
        let surplus = retNum % 2
        print("Surplus = \(surplus)")
        if surplus == 0 {
            even_or_odd.text = "『Even』"
        } else {
            even_or_odd.text = "『Odd』"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("START!")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}