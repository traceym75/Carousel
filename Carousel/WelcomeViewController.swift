//
//  WelcomeViewController.swift
//  Carousel
//
//  Created by Tracey Ewart on 9/24/15.
//  Copyright © 2015 Tracey Ewart. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var scrollView: UIScrollView!

    @IBOutlet weak var tourButtonImageView: UIImageView!
    
    @IBOutlet weak var greenUISwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        tourButtonImageView.alpha = 0
        
        greenUISwitch.hidden = true
        
        scrollView.delegate = self

        scrollView.contentSize = CGSize(width: 1280, height: 568)
        
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        // Get the current page based on the scroll offset
        let page : Int = Int(round(scrollView.contentOffset.x / 320))
        
        // Set the current page, so the dots will update
        pageControl.currentPage = page
  
        print(page)
        
        // reveal the take tour btn
        if pageControl.currentPage == 3  {
        print("on page 4!")
            
            UIView.animateWithDuration(0.7) {
        
                self.tourButtonImageView.alpha = 1
                self.greenUISwitch.hidden = false
                
            }
            
        }
    
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func greenSwitch(sender: AnyObject) {
 
    }

    @IBAction func onTourButton(sender: AnyObject) {
   
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
