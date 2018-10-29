//
//  GameViewController.swift
//  lista6ClosestPoints
//
//  Created by Miguel Pimentel on 29/10/18.
//  Copyright © 2018 Miguel Pimentel. All rights reserved.
//


import SpriteKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let skview = SKView(frame: CGRect(x: 0,
                                         y: 0,
                                         width: 375,
                                         height: 667))
        
        let scene = GameScene(size: skview.frame.size, view: skview)
        scene.scaleMode = .aspectFill
        skview.presentScene(scene)
    
        TimerManager.triggerAction(seconds: 10) {  }
    }
}
