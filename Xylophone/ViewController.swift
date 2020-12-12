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
        
        playSound(type: sender.currentTitle)
        sender.alpha = 0.5
        
        //Code should execute after 0.2 second delay.
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            //Bring's sender's opacity back up to fully opaque.
            sender.alpha = 1.0
        }
           
       }
    
    func playSound(type : String?) {
        let url = Bundle.main.url(forResource: type, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}
