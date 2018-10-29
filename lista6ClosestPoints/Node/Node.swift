//
//  Node.swift
//  lista6ClosestPoints
//
//  Created by Miguel Pimentel on 29/10/18.
//  Copyright © 2018 Miguel Pimentel. All rights reserved.
//

import SpriteKit

class Node: SKShapeNode {
    
    static var points = [Point]()
    
    public override init() {
        super.init()
    }
    
    public init (radius: CGFloat) {
        super.init()
        self.init(circleOfRadius: 10)
        self.position =  self.setPosition()
        let color = self.setColor()
        self.fillColor = color
        self.strokeColor = color
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func spawnBubbles(numberOfNodes: Int, scene: SKScene) {
        for index in 0..<numberOfNodes {
            let node = Node(radius: 10)
            let color = self.setColor()
            
            node.name = String(index)
            node.strokeColor = color
            node.fillColor = color
            node.position = self.setPosition()
            scene.addChild(node)
        }
    }
    
    private func setColor() -> UIColor {
        let randomColor: Int = Int(arc4random_uniform(4))
        return Constants.colors[randomColor]
    }
    
    private func setPosition() -> CGPoint {
        let xPosition: CGFloat = CGFloat(drand48()) * UIScreen.main.bounds.width
        let yPosition: CGFloat = CGFloat(drand48()) * UIScreen.main.bounds.height
        let position: CGPoint = CGPoint(x: xPosition, y: yPosition)
        Node.points.append(Point(x: Double(xPosition), y: Double(yPosition)))
        
        return position
    }
}
