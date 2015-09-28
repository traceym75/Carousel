//
//  LoggedInViewController.swift
//  Carousel
//
//  Created by Tracey Ewart on 9/26/15.
//  Copyright © 2015 Tracey Ewart. All rights reserved.
//

import UIKit

class LoggedInViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var loggedInScrollView: UIScrollView!
    
    @IBOutlet weak var convoButton: UIButton!
    
    @IBOutlet weak var profileButton: UIButton!
    
    @IBOutlet weak var navImageView: UIImageView!
    
    @IBOutlet weak var feedImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        loggedInScrollView.delegate = self
        
        loggedInScrollView.contentSize = feedImageView.image!.size
        
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
