//
//  ViewController.swift
//  Dice App
//
//  Created by нурсултан арапов on 6/26/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageViewOne: UIImageView!
    
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    @IBAction func rollButtonPressed(_sender: UIButton) {
        let diceArray = [#imageLiteral(resourceName: "Dice1"), #imageLiteral(resourceName: "Dice2"), #imageLiteral(resourceName: "Dice3"), #imageLiteral(resourceName: "Dice4"), #imageLiteral(resourceName: "Dice5"), #imageLiteral(resourceName: "Dice6")]
        
        diceImageViewOne.image = diceArray.randomElement()
        
        diceImageViewTwo.image = diceArray.randomElement()
        
    }
    
}

