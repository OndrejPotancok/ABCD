//
//  GameLists.swift
//  ABCD
//
//  Created by Lukáš Baláž on 29/06/15.
//  Copyright (c) 2015 TuppleApps. All rights reserved.
//

import Foundation
import UIKit


var gameModelArray: [MainGameModel] = [
    
    ExampleGameModel(name: "Example", codeName: "Example") as MainGameModel,
    TestGameModel(name: "Test", codeName: "Test") as MainGameModel
]


extension MainGameController {
    
    class func createGameControllerByGameModel(gameModel: MainGameModel) -> MainGameController? {
        
        switch gameModel.codeName {
        case "Example":
            return ExampleGameController(gameModel: gameModel) as MainGameController
        case "Test":
            return TestGameController(gameModel: gameModel) as MainGameController
        default:
            return nil
        }
    }
    
}