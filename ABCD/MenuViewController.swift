//
//  MenuViewController.swift
//  ABCD
//
//  Created by Lukáš Baláž on 30/06/15.
//  Copyright (c) 2015 TuppleApps. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func menuButtonPressed(sender: AnyObject) {
        
        if let gameModel = getGameModelByName((sender as! UIButton).currentTitle!) {
            if let mainGameController = MainGameController.createGameControllerByGameModel(gameModel) {
                performSegueWithIdentifier("startGame", sender: mainGameController)
            }
        }
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "startGame" {
            (segue.destinationViewController as! GameViewController).mainGameController = sender as! MainGameController
        }
    }
}
