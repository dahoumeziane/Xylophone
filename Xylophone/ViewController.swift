//
//  ViewController.swift
//  Xylophone
//
//  Created by Dahou Meziane on 12/12/20.
//  Copyright © 2020 Meziane Dahou. All rights reserved.
//
import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

     @IBAction func bButtonClicked(_ sender: UIButton) {
        
        playSound(let: sender.currentTitle)
           
       }
    
    func playSound(`let` type : String?) {
        let url = Bundle.main.url(forResource: type, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}
