//
//  ViewController.swift
//  Flash Cards
//
//  Created by Mando Quintana on 10/13/18.
//  Copyright © 2018 Armando Quintana. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet var frontLabel: UILabel!
    @IBOutlet var backLabel: UILabel!
    @IBOutlet var choice1: UILabel!
    @IBOutlet var choice2: UILabel!
    @IBOutlet var choice3: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didTapFlashCard(_ sender: Any) {
        self.frontLabel.isHidden = true
        self.backLabel.isHidden = false
        print("pressed1")
    }
    
    @IBAction func backToQuestion(_ sender: Any) {
        self.frontLabel.isHidden = false
        self.backLabel.isHidden = true
    }
    
    @IBAction func didTapChoice1(_ sender: Any) {
        choice1.backgroundColor = UIColor.green
    }
    
    @IBAction func didTapChoice2(_ sender: Any) {
        choice2.backgroundColor = UIColor.red
    }
    
    @IBAction func didTapChoice3(_ sender: Any) {
        choice3.backgroundColor = UIColor.red
    }
    
    @IBAction func restTap(_ sender: Any) {
        choice1.backgroundColor = UIColor.white
        choice2.backgroundColor = UIColor.white
        choice3.backgroundColor = UIColor.white
        frontLabel.isHidden = false
        backLabel.isHidden = true
    }
}

