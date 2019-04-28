//
//  BeginnerBallerVC.swift
//  app-swoosh-dev
//
//  Created by Mac User on 4/28/19.
//  Copyright © 2019 Hammerhead96. All rights reserved.
//

import UIKit

class SkillVC: UIViewController {

    var player: Player!
    
    @IBOutlet weak var finishedBtn: BorderButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        print(player.desiredLeague)
    }
    func selectSkill(selectedSkillLevel: String) {
        player.selectedSkillLevel = selectedSkillLevel
        finishedBtn.isEnabled = true
    }

    @IBAction func beginnerPressed(_ sender: Any) {
        selectSkill(selectedSkillLevel: "beginner")
    }
    @IBAction func ballerPressed(_ sender: Any) {
        selectSkill(selectedSkillLevel: "baller")
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let mainVC = segue.destination as? MainVC {
            mainVC.player = player
        }
    }
}
