//
//  ExampleGameController.swift
//  ABCD
//
//  Created by Lukáš Baláž on 29/06/15.
//  Copyright (c) 2015 TuppleApps. All rights reserved.
//

import Foundation
import UIKit

class ExampleGameController: MainGameController {
    
    var gameModel: ExampleGameModel!
    var backgroundView: ExampleBackgroundView!
    var gameView: ExampleGameView!
    var hudView: ExampleHudView!
    
    override init(gameModel: MainGameModel) {
        super.init(gameModel: gameModel)
        
        self.gameModel = self.mainGameModel as! ExampleGameModel
        self.backgroundView = self.mainBackgroundView as! ExampleBackgroundView
        self.backgroundView.gameController = self.mainBackgroundView.mainGameController as! ExampleGameController
        self.gameView = self.mainGameView as! ExampleGameView
        self.gameView.gameController = self.mainGameView.mainGameController as! ExampleGameController
        self.hudView = self.mainHudView as! ExampleHudView
        self.hudView.gameController = self.mainHudView.mainGameController as! ExampleGameController
    }
}
