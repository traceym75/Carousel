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
    
    @IBAction func onLoginButton(sender: AnyObject) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.contentSize = imageView.image!.size
        
        // Do any additional setup after loading the view.
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        // This method is called as the user scrolls  PUT THE TILE IMG ANIMATIONS HERE
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
