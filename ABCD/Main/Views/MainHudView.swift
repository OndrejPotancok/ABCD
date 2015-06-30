//
//  MainHudView.swift
//  ABCD
//
//  Created by Lukáš Baláž on 29/06/15.
//  Copyright (c) 2015 TuppleApps. All rights reserved.
//

import Foundation
import UIKit

class MainHudView: UIView, controlledMainView {
    
    weak var mainGameController: MainGameController!
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.userInteractionEnabled = false
        self.backgroundColor = UIColor.clearColor()
    }
    
}