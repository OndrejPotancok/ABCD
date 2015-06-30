//
//  GuessShapeGameController.swift
//  ABCD
//
//  Created by Lukáš Baláž on 29/06/15.
//  Copyright (c) 2015 TuppleApps. All rights reserved.
//

import Foundation
import UIKit

class GuessShapeGameController: MainGameController {
    
    var gameModel: GuessShapeGameModel!
    var backgroundView: GuessShapeBackgroundView!
    var gameView: GuessShapeGameView!
    var hudView: GuessShapeHudView!
    
    override init(gameModel: MainGameModel) {
        super.init(gameModel: gameModel)
        
        self.gameModel = self.mainGameModel as! GuessShapeGameModel
        self.backgroundView = self.mainBackgroundView as! GuessShapeBackgroundView
        self.backgroundView.gameController = self.mainBackgroundView.mainGameController as! GuessShapeGameController
        self.gameView = self.mainGameView as! GuessShapeGameView
        self.gameView.gameController = self.mainGameView.mainGameController as! GuessShapeGameController
        self.hudView = self.mainHudView as! GuessShapeHudView
        self.hudView.gameController = self.mainHudView.mainGameController as! GuessShapeGameController
    }
}
