//
//  TestGameController.swift
//  ABCD
//
//  Created by Lukáš Baláž on 29/06/15.
//  Copyright (c) 2015 TuppleApps. All rights reserved.
//

import Foundation
import UIKit

class TestGameController: MainGameController {
    
    var gameModel: TestGameModel!
    var backgroundView: TestBackgroundView!
    var gameView: TestGameView!
    var hudView: TestHudView!
    
    override init(gameModel: MainGameModel) {
        super.init(gameModel: gameModel)
        
        self.gameModel = self.mainGameModel as! TestGameModel
        self.backgroundView = self.mainBackgroundView as! TestBackgroundView
        self.backgroundView.gameController = self.mainBackgroundView.mainGameController as! TestGameController
        self.gameView = self.mainGameView as! TestGameView
        self.gameView.gameController = self.mainGameView.mainGameController as! TestGameController
        self.hudView = self.mainHudView as! TestHudView
        self.hudView.gameController = self.mainHudView.mainGameController as! TestGameController
    }
    
    func buttonPressed() {
        self.gameView.label.text = "Button Pressed"
    }
}