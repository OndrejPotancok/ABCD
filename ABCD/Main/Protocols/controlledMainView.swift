//
//  controlledMainView.swift
//  ABCD
//
//  Created by Lukáš Baláž on 30/06/15.
//  Copyright (c) 2015 TuppleApps. All rights reserved.
//

import Foundation
import UIKit

protocol controlledMainView {
    
    weak var mainGameController: MainGameController! { get set }
    
}