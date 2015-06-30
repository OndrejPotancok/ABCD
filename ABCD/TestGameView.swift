//
//  TestGameView.swift
//  ABCD
//
//  Created by Lukáš Baláž on 29/06/15.
//  Copyright (c) 2015 TuppleApps. All rights reserved.
//

import Foundation
import UIKit

class TestGameView: MainGameView, controlledTestView {
    
    weak var gameController: TestGameController!
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func buttonPressed(sender: AnyObject) {
        self.gameController.buttonPressed()
    }
}