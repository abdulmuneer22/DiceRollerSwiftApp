//
//  ViewController.swift
//  Dicee
//
//  Created by muneer on 23/05/19.
//  Copyright © 2019 muneer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var diceIndex1:Int = 0
    var diceIndex2:Int = 0
    
    var diceImagesList = ["dice1","dice2","dice3","dice4","dice5","dice6"]

    @IBOutlet weak var diece1: UIImageView!
    @IBOutlet weak var diece2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        updateDiceImages()
    
    }
    
    

    @IBAction func rollButtonPressed(_ sender: Any) {
        updateDiceImages()
    }
    
    
    func updateDiceImages () {
        diceIndex1 = Int(arc4random_uniform(6))
        diceIndex2 = Int(arc4random_uniform(6))
        
        diece1.image = UIImage(named: diceImagesList[diceIndex1])
        diece2.image = UIImage(named: diceImagesList[diceIndex2])
        
    }
    
    // on shake of event , just call update diceImage method
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
}

