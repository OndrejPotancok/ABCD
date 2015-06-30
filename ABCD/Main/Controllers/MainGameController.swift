//
//  MainGameController.swift
//  ABCD
//
//  Created by Lukáš Baláž on 29/06/15.
//  Copyright (c) 2015 TuppleApps. All rights reserved.
//

import Foundation
import UIKit

class MainGameController {
    
    var mainGameModel: MainGameModel!
    var mainBackgroundView: MainBackgroundView
    var mainGameView: MainGameView!
    var mainHudView: MainHudView!
    
    init(gameModel: MainGameModel) {
        self.mainGameModel = gameModel
        
        var views = NSBundle.mainBundle().loadNibNamed(self.mainGameModel.layoutFileName, owner: nil, options: nil) as [AnyObject]
        
        self.mainBackgroundView = views[0] as! MainBackgroundView
        self.mainBackgroundView.frame = CGRectMake(0, 0, ScreenWidth, ScreenHeight)
        self.mainBackgroundView.mainGameController = self
        
        self.mainGameView = views[1] as! MainGameView
        self.mainGameView.frame = CGRectMake(0, 0, ScreenWidth, ScreenHeight)
        self.mainGameView.mainGameController = self
        
        self.mainHudView = views[2] as! MainHudView
        self.mainHudView.frame = CGRectMake(0, 0, ScreenWidth, ScreenHeight)
        self.mainHudView.mainGameController = self
    }
}