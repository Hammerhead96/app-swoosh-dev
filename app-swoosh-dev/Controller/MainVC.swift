//
//  ViewController.swift
//  app-swoosh-dev
//
//  Created by Mac User on 4/27/19.
//  Copyright © 2019 Hammerhead96. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    var player: Player?
    @IBOutlet weak var statementLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func unwindFromLeagueVC(unwindSegue: UIStoryboardSegue) {
        
    }
    @IBAction func unwindFromSkillVC(unwindSegue: UIStoryboardSegue) {
        
    }
    override func viewDidAppear(_ animated: Bool) {
        if let desLeague = player?.desiredLeague {
            if let skillLevel = player?.selectedSkillLevel {
                statementLbl.text = "You are entered as a \(skillLevel) player in the \(desLeague) league."
            }
        }
    }
}

