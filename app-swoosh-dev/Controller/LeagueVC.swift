//
//  LeagueVC.swift
//  app-swoosh-dev
//
//  Created by Mac User on 4/27/19.
//  Copyright © 2019 Hammerhead96. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    var player: Player!
    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    } // end of viewDidLoad
    @IBAction func nextTapped(_ sender: Any) {
        performSegue(withIdentifier: "toSkillVC", sender: self)
    }
    @IBAction func mensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    @IBAction func womensTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")
    }
    @IBAction func coedTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")
    }
    func selectLeague(leagueType: String) {
    player.desiredLeague = leagueType
        nextBtn.isEnabled = true
        nextBtn.wiggle()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }
}
