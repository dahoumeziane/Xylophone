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
           playSound()
           
       }
    
    func playSound() {
        let url = Bundle.main.url(forResource: "C", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}
