//
//  GameScene.swift
//  SpriteKitIntro
//
//  Created by Gurjeet kaur on 2019-09-30.
//  Copyright © 2019 The Lambton. All rights reserved.
//

import SpriteKit
import GameplayKit
class GameScene: SKScene {
    var pikachu: SKSpriteNode!
    var HighScoreLabel:SKLabelNode!
    var square:SKSpriteNode!
    ///setup your scene +sprites
    override func didMove(to view: SKView) {
        print("Hello World")
        print("Screen size: \(size.width),\(size.height)");
        //Add some sprites
        //Makre some teXt
        //1.Make label node
        self.HighScoreLabel=SKLabelNode(text:"Score:25")
        //2.Configure the node
         //Setting the font size,color,position
        self.HighScoreLabel.position=CGPoint(x: 100, y: 100)
        self.HighScoreLabel.fontSize=45;
        self.HighScoreLabel.fontColor=UIColor.yellow
        self.HighScoreLabel.fontName="Avenir"
         addChild(HighScoreLabel)
        
       //draw a square
        self.square=SKSpriteNode(color: UIColor.yellow, size: CGSize(width: 100, height: 100))
        self.square.position=CGPoint(x: 200, y: 500)
        addChild(square)
        
        //Draw a picture
             //1.Make an image node
        self.pikachu=SKSpriteNode(imageNamed: "pikachu.png")
   
        //2.congigure the image node
        pikachu.position=CGPoint(x: 200, y: 323)
        //3.Add the image node on the screen
        
        addChild(pikachu)
    }
    
    //Update positiions redraw sprites.
    //Similar to update Positions in androiD
    var pikachuDirection:String="right"
    override func update(_ currentTime: TimeInterval) {
        //print("\(currentTime):Any thing");
        
        
        //Types of moments
        // 1.Manual movements(Similar to Android)
        if (self.pikachuDirection == "right") {
                    self.pikachu.position.x = self.pikachu.position.x + 1
                
                          // Check if pikachu touches the wall
                     if (self.pikachu.position.x >= size.width) {
                              self.pikachuDirection = "left"
                           }
                  }
              else if (self.pikachuDirection == "left") {
                self.pikachu.position.x = self.pikachu.position.x - 1
                
                       if (self.pikachu.position.x <= 0) {
                              self.pikachuDirection = "right"
            }            }
        
        
        
        //Automatic movement
        
        let upMoveAction=SKAction.moveBy(x: 0, y: 1, duration: 2)
        let leftMoveAction=SKAction.moveBy(x: -1, y: 0, duration: 2)
        self.square.run(upMoveAction)
        self.HighScoreLabel.run(leftMoveAction)
    }
    
    //Detect user input
    //touches ended==event.ACTION_Up
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        //get the x,y position of the mouse
        print("Person touches the screen");
        //Detect x,y position of where your finger is
        let locationTouched = touches.first
        
        if (locationTouched == nil) {
            // This is error handling
            // Sometimes the mouse detection doesn't work properly
            // and IOS can't get the position.
            return
        }
        
        
        // The UITouch object has a property called location
        // the location property has an (x,y)
        let mousePosition = locationTouched!.location(in:self)
        print("MOUSE X?  \(mousePosition.x)")
        print("MOUSE Y?  \(mousePosition.y)")
        print("------")

    }
    
    
}
