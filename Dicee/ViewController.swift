//
//  ViewController.swift
//  Dicee
//
//  Created by jason Moses on 2018/09/30.
//  Copyright © 2018 jason Moses. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]

    
    
    var  randomDiceIndex1: Int = 0
    var  randomDiceIndex2: Int = 0

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var backroundView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    updateDiceImages()
    
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
     updateDiceImages()
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
    updateDiceImages()
        
    }

    func updateDiceImages() {
        
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])

    
        if diceImageView1.image == UIImage(named :diceArray[5]) {
            
            print("good work")
            
            
        }
    
    
        if diceImageView2.image == UIImage(named: diceArray[5]) {
            
            print("good work ")
            
        }
    
    
    
    
    }
    
    
    
    
    
    
    

}


