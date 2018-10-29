//
//  GameLayer.swift
//  lista6ClosestPoints
//
//  Created by Miguel Pimentel on 29/10/18.
//  Copyright © 2018 Miguel Pimentel. All rights reserved.
//

import SpriteKit

public class GameScene: SKScene {

    var skView: SKView?
    
    public init(size: CGSize, view: SKView) {
        super.init(size: size)
        
        self.backgroundColor = Constants.iceWhite
        self.skView = view
                
        self.backgroundColor = Constants.iceWhite
        Node().spawnBubbles(numberOfNodes: 10, scene: self)
        
        let (FirstClosestPoint, SecondClosestPoint) = Node.points.closestPair()!
        print(FirstClosestPoint)
        print(SecondClosestPoint)
        
        let node1 = self.nodes(at: CGPoint(x: FirstClosestPoint.x,
                                           y: FirstClosestPoint.y))
        let node2 = self.nodes(at: CGPoint(x: SecondClosestPoint.x,
                                           y: SecondClosestPoint.y))
        
        print(node1)
        print(node2)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

