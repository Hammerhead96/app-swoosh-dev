//
//  BorderButton.swift
//  app-swoosh-dev
//
//  Created by Mac User on 4/27/19.
//  Copyright © 2019 Hammerhead96. All rights reserved.
//

import UIKit

class BorderButton: UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }
}
extension UIButton {
    func wiggle() {     // Wiggle
        let wiggleAnim = CABasicAnimation(keyPath: "position")
        wiggleAnim.duration = 0.05
        wiggleAnim.repeatCount = 5
        wiggleAnim.autoreverses = true
        wiggleAnim.fromValue = CGPoint(x: self.center.x, y: self.center.y - 4.0)
        wiggleAnim.toValue = CGPoint(x: self.center.x, y: self.center.y + 4.0)
        layer.add(wiggleAnim, forKey: "position")
    }
}
