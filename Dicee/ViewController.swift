//
//  ViewController.swift
//  Dicee
//
//  Created by Chang, Yuan Chang on 8/6/19.
//  Copyright © 2019 fds. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var randomDice1: UIImageView!
    @IBOutlet weak var randomDice2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
    }
    
    @IBAction func RollBtnClicked(_ sender: UIButton) {
        updateDiceImages()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
    func updateDiceImages() {
        randomDice1.image = UIImage(named: "dice\(Int.random(in: 1 ... 5))");
        randomDice2.image = UIImage(named: "dice\(Int.random(in: 1 ... 5))");
    }
    
}

