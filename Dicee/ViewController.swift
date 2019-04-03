//
//  ViewController.swift
//  Dicee
//
//  Created by Kevin O'Mara on 4/2/19.
//  Copyright © 2019 O'Mara Consulting Associates. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1", "dice2","dice3","dice4","dice5","dice5"]
    
    var randomeDiceIndex1: Int = 0
    var randomeDiceIndex2: Int = 0

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateDiceImage()
    }

    fileprivate func updateDiceImage() {
        randomeDiceIndex1 = Int.random(in: 0 ... 5)
        randomeDiceIndex2 = Int.random(in: 0 ... 5)
        
        diceImageView1.image = UIImage(named: diceArray[randomeDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomeDiceIndex2])
    }
    
    @IBAction func rollButtonPressed(_ sender: Any) {
        
        updateDiceImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImage()
    }
}

