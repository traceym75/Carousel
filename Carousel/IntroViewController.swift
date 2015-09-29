//
//  IntroViewController.swift
//  Carousel
//
//  Created by Tracey Ewart on 9/22/15.
//  Copyright © 2015 Tracey Ewart. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    
    // image tiles
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var tileOneImageView: UIImageView!
    @IBOutlet weak var tileTwoImageView: UIImageView!
    @IBOutlet weak var tileThreeImageView: UIImageView!
    @IBOutlet weak var tileFourImageView: UIImageView!
    @IBOutlet weak var tileFiveImageView: UIImageView!
    @IBOutlet weak var tileSixImageView: UIImageView!
    
    var scale = CGFloat(1)
    
    var tileOneOriginalPosition : CGPoint!
    var tileTwoOriginalPosition : CGPoint!
    var tileThreeOriginalPosition : CGPoint!
    var tileFourOriginalPosition : CGPoint!
    var tileFiveOriginalPosition : CGPoint!
    var tileSixOriginalPosition : CGPoint!
    
    
    @IBAction func onLoginButton(sender: AnyObject) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.contentSize = imageView.image!.size
        
        scrollView.delegate = self
        
        tileOneOriginalPosition = tileOneImageView.center
        tileTwoOriginalPosition = tileTwoImageView.center
        tileThreeOriginalPosition = tileThreeImageView.center
        tileFourOriginalPosition = tileFourImageView.center
        tileFiveOriginalPosition = tileFiveImageView.center
        tileSixOriginalPosition = tileSixImageView.center
        
        
        // start images at higher x and y
        
        tileOneImageView.frame.origin.y = tileOneImageView.frame.origin.y - 270
        tileOneImageView.frame.origin.x = tileOneImageView.frame.origin.x - 70
        
        tileTwoImageView.frame.origin.y = tileTwoImageView.frame.origin.y - 250
        tileTwoImageView.frame.origin.x = tileTwoImageView.frame.origin.x + 30
        
        tileThreeImageView.frame.origin.y = tileThreeImageView.frame.origin.y - 426
        tileThreeImageView.frame.origin.x = tileThreeImageView.frame.origin.x + 14
        
        tileFourImageView.frame.origin.y = tileFourImageView.frame.origin.y - 391
        tileFourImageView.frame.origin.x = tileFourImageView.frame.origin.x + 100
        
        tileFiveImageView.frame.origin.y = tileFiveImageView.frame.origin.y - 505
        tileFiveImageView.frame.origin.x = tileFiveImageView.frame.origin.x - 115
        
        tileSixImageView.frame.origin.y = tileSixImageView.frame.origin.y - 492
        tileSixImageView.frame.origin.x = tileSixImageView.frame.origin.x - 90
        
        // start images scaled up and tilted
        
        // --- ONE  (good)
        tileOneImageView.transform = CGAffineTransformMakeRotation(CGFloat(-15 * M_PI / 180))
        
        // --- TWO DEER (good)
        tileTwoImageView.transform = CGAffineTransformMakeScale(1.65, 1.65)
        tileTwoImageView.transform = CGAffineTransformRotate(tileTwoImageView.transform, CGFloat(-10 * M_PI / 180))
        // --- THREE FISH (good)
        tileThreeImageView.transform = CGAffineTransformMakeScale(1.50, 1.50)
        tileThreeImageView.transform = CGAffineTransformRotate(tileThreeImageView.transform, CGFloat(17 * M_PI / 180))
        // --- FOUR MOUNTAIN
        tileFourImageView.transform = CGAffineTransformMakeScale(1.75, 1.75)
        tileFourImageView.transform = CGAffineTransformRotate(tileFourImageView.transform, CGFloat(12 * M_PI / 180))
        // --- FIVE CABIN
        tileFiveImageView.transform = CGAffineTransformMakeScale(1.75, 1.75)
        tileFiveImageView.transform = CGAffineTransformRotate(tileFiveImageView.transform, CGFloat(10 * M_PI / 180))
        // --- SIX GIRL
        tileSixImageView.transform = CGAffineTransformMakeScale(1.60, 1.60)
        tileSixImageView.transform = CGAffineTransformRotate(tileSixImageView.transform, CGFloat(-15 * M_PI / 180))
        
        
        // Do any additional setup after loading the view.
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        // This method is called as the user scrolls  PUT THE TILE IMG ANIMATIONS HERE
        
        
        UIView.animateWithDuration(0.5) {
            
            // ONE
            self.tileOneImageView.center = self.tileOneOriginalPosition
            self.tileOneImageView.transform = CGAffineTransformIdentity
            
            // TWO
            self.tileTwoImageView.center = self.tileTwoOriginalPosition
            self.tileTwoImageView.transform = CGAffineTransformIdentity
            
            // THREE
            self.tileThreeImageView.center = self.tileThreeOriginalPosition
            self.tileThreeImageView.transform = CGAffineTransformIdentity
            // FOUR
            self.tileFourImageView.center = self.tileFourOriginalPosition
            self.tileFourImageView.transform = CGAffineTransformIdentity
            // FIVE
            self.tileFiveImageView.center = self.tileFiveOriginalPosition
            self.tileFiveImageView.transform = CGAffineTransformIdentity
            // SIX
            self.tileSixImageView.center = self.tileSixOriginalPosition
            self.tileSixImageView.transform = CGAffineTransformIdentity
            
        }
        
        
        print("You did scroll")
    }
    

    
    func scrollViewWillBeginDragging(scrollView: UIScrollView) {
        
        print("You did begin dragging")
        
    }
    
    func scrollViewDidEndDragging(scrollView: UIScrollView,
        willDecelerate decelerate: Bool) {
            // This method is called right as the user lifts their finger
            
            print("You did end dragging")
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        // This method is called when the scrollview finally stops scrolling.
        
        print("You did end decelerating")
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
