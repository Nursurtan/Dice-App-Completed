//
//  ViewController.swift
//  Dice App
//
//  Created by нурсултан арапов on 6/26/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var audioPlayer:AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBOutlet weak var diceImageViewOne: UIImageView!
    
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    @IBAction func rollButtonPressed(_sender: UIButton) {
        // Getting the url
        let url = Bundle.main.url(forResource: "rolling dice 2", withExtension: "mp3")
        // Make sure that we've got the url, otherwise abord
        guard url != nil else {
            return
        }
        // Create the audio player the sound
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url!)
            audioPlayer?.play()
        }
        catch {
            print("error")
        }
        let diceArray = [#imageLiteral(resourceName: "Dice1"), #imageLiteral(resourceName: "Dice2"), #imageLiteral(resourceName: "Dice3"), #imageLiteral(resourceName: "Dice4"), #imageLiteral(resourceName: "Dice5"), #imageLiteral(resourceName: "Dice6")]
        
        diceImageViewOne.image = diceArray.randomElement()
        
        diceImageViewTwo.image = diceArray.randomElement()
        
    }
    
}

