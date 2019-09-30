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
    
    ///setup your scene +sprites
    override func didMove(to view: SKView) {
        print("Hello World")
        print("Screen size: \(size.width),\(size.height)");
        //Add some sprites
        //Makre some teXt
        //1.Make label node
        let highScoreLabel=SKLabelNode(text:"Score:25")
        //2.Configure the node
         //Setting the font size,color,position
         highScoreLabel.position=CGPoint(x: 100, y: 100)
         highScoreLabel.fontSize=45;
         highScoreLabel.fontColor=UIColor.yellow
         highScoreLabel.fontName="Avenir"
         addChild(highScoreLabel)
        
       //draw a square
        let square=SKSpriteNode(color: UIColor.yellow, size: CGSize(width: 100, height: 100))
        square.position=CGPoint(x: 200, y: 500)
        addChild(square)
        
        //Draw a picture
             //1.Make an image node
        let pikachu=SKSpriteNode(imageNamed: "pikachu.png")
   
        //2.congigure the image node
        pikachu.position=CGPoint(x: 200, y: 323)
        //3.Add the image node on the screen
        
        addChild(pikachu)
    }
    
    //Update positiions redraw sprites.
    //Similar to update Positions in androiD
    override func update(_ currentTime: TimeInterval) {
        //print("\(currentTime):Any thing");
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
