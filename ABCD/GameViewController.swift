//
//  GameViewController.swift
//  ABCD
//
//  Created by Lukáš Baláž on 29/06/15.
//  Copyright (c) 2015 TuppleApps. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    var mainGameController: MainGameController!
    @IBOutlet weak var backButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(self.mainGameController.mainBackgroundView)
        self.view.addSubview(self.mainGameController.mainGameView)
        self.view.addSubview(self.mainGameController.mainHudView)
        self.view.bringSubviewToFront(backButton)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func navigateBack(sender: AnyObject) {
        self.navigationController?.popViewControllerAnimated(true)
    }

}
