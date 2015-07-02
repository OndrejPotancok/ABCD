//
//  GuessShapeGameView.swift
//  ABCD
//
//  Created by Lukáš Baláž on 29/06/15.
//  Copyright (c) 2015 TuppleApps. All rights reserved.
//

import Foundation
import UIKit

class GuessShapeGameView: MainGameView, controlledGuessShapeView {
    
    weak var gameController: GuessShapeGameController!
    
    
    @IBOutlet weak var siluette: GuessShapeSiluetteView!
    @IBOutlet weak var leftThumb: GuessShapeThumbView!
    @IBOutlet weak var middleThumb: GuessShapeThumbView!
    @IBOutlet weak var rightThumb: GuessShapeThumbView!
    
}
