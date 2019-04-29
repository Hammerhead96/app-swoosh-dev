//
//  ViewController.swift
//  app-swoosh-dev
//
//  Created by Mac User on 4/27/19.
//  Copyright © 2019 Hammerhead96. All rights reserved.
//

import UIKit
import AVFoundation

class MainVC: UIViewController {
    var player: Player?
    var audio: AVAudioPlayer!
    let cheerPath = Bundle.main.path(forResource: "cheer", ofType: "mp3")
    let bellPath = Bundle.main.path(forResource: "bell", ofType: "mp3")
    let bouncePath = Bundle.main.path(forResource: "basketball-bounce", ofType: "wav")
    let bPath = Bundle.main.path(forResource: "basketball", ofType: "wav")
    @IBOutlet weak var statementLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func unwindFromLeagueVC(unwindSegue: UIStoryboardSegue) {
        
    }
    @IBAction func unwindFromSkillVC(unwindSegue: UIStoryboardSegue) {
        
    }
    override func viewDidAppear(_ animated: Bool) {
        if let bPath = bPath {
        do {
            try audio = AVAudioPlayer(contentsOf: URL(fileURLWithPath: bPath))
            audio.numberOfLoops = -1
            audio.play()
        } catch let error as NSError {
            print(error.description)
            }   }
        if let dL = player?.desiredLeague {
            if let sL = player?.selectedSkillLevel {
                statementLbl.text = "You are entered as a \(sL) player in the \(dL) league."
            }
        }
    }
}

