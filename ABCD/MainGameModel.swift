//
//  MainGameModel.swift
//  ABCD
//
//  Created by Lukáš Baláž on 29/06/15.
//  Copyright (c) 2015 TuppleApps. All rights reserved.
//

import Foundation
import UIKit

class MainGameModel {
    
    var name: String
    var codeName: String
    var layoutFileName: String {
        return codeName + "Layout"
    }
    
    init(name: String, codeName: String) {
        self.name = name
        self.codeName = codeName
    }
}
