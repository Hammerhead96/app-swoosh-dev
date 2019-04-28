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
