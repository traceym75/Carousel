//
//  SignInViewController.swift
//  Carousel
//
//  Created by Tracey Ewart on 9/23/15.
//  Copyright © 2015 Tracey Ewart. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    var initialY: CGFloat!
    let offset: CGFloat = -70
    
    // IMAGES
    @IBOutlet weak var loginTextImageView: UIImageView!
    @IBOutlet weak var loginButtonsImageView: UIImageView!
    @IBOutlet weak var loginFieldsImageView: UIImageView!
    
    @IBOutlet weak var smokeScreenImageView: UIView!
    
    @IBOutlet weak var loginAssetsView: UIView!
    
    
    // FORM FIELDS
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!

    
    // BACK BUTTON
    @IBAction func onBackButton(sender: AnyObject) {
        
       dismissViewControllerAnimated(true, completion: nil)
        print("dismiss view is true")
    }

    @IBOutlet weak var activityIndicatorView: UIActivityIndicatorView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        initialY = loginAssetsView.frame.origin.y
        

        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
        
        activityIndicatorView.hidden = true
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }
    
    // To dismiss keyboard (NOT WORKING)
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
        
        //  also need to add code here to move the assets back down
    }

    // SIGN IN BUTTON
    
    @IBAction func onSignInButton(sender: AnyObject) {
        if emailField.text!.isEmpty {
           
            let alertController = UIAlertController(title: "An Email is Required", message: "Please enter your email address", preferredStyle: .Alert)
            
            // create an OK action
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action) in
                // handle response here.
            }
            // add the OK action to the alert controller
            alertController.addAction(OKAction)
            
            presentViewController(alertController, animated: true) {
  
            }
       
        }
        else if passwordField.text!.isEmpty {
          
            let alertController = UIAlertController(title: "A Password is Required", message: "Please enter your password", preferredStyle: .Alert)
            
            // create an OK action
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action) in
                // handle response here.
            }
            // add the OK action to the alert controller
            alertController.addAction(OKAction)
            
            presentViewController(alertController, animated: true) {
      
            }
            
        }
 
        if emailField.text == "try" && passwordField.text == "ppp"
         {
            self.activityIndicatorView.hidden = false
            self.smokeScreenImageView.hidden = false
            self.activityIndicatorView.startAnimating()
            self.view.endEditing(true)
            
            // Delay for 2 seconds, then run the code between the braces.
            delay(2) {
 
                self.performSegueWithIdentifier("loginSegue", sender: self)
                print("I will pause for 2 sec")
                self.activityIndicatorView.stopAnimating()
            }
        }

        else if emailField.text != "try"
        {
             // add the loading alert here for 2 seconds
            
            let alertController = UIAlertController(title: "Check your email", message: "An incorrect email address was entered", preferredStyle: .Alert)
            
            // create an OK action
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action) in
                // handle response here.
            }
            // add the OK action to the alert controller
            alertController.addAction(OKAction)
            
            presentViewController(alertController, animated: true) {
            }
        }
        else if passwordField.text != "ppp"
        {
            
            // add the loading alert here for 2 seconds
            
            
            let alertController = UIAlertController(title: "Check your password", message: "An incorrect password was entered", preferredStyle: .Alert)
            
            // create an OK action
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action) in
                // handle response here.
            }
            // add the OK action to the alert controller
            alertController.addAction(OKAction)
            
            presentViewController(alertController, animated: true) {
            }
        }

    }
    
    func keyboardWillShow(notification: NSNotification!) {
        var userInfo = notification.userInfo!
        
        // Get the keyboard height and width from the notification
        // Size varies depending on OS, language, orientation
        
        self.loginAssetsView.frame.origin = CGPoint(x: self.loginAssetsView.frame.origin.x, y: self.initialY + self.offset)
        
        _ = (userInfo[UIKeyboardFrameEndUserInfoKey] as! NSValue).CGRectValue().size
        let durationValue = userInfo[UIKeyboardAnimationDurationUserInfoKey] as! NSNumber
        let animationDuration = durationValue.doubleValue
        let curveValue = userInfo[UIKeyboardAnimationCurveUserInfoKey] as! NSNumber
        let animationCurve = curveValue.integerValue
        
        UIView.animateWithDuration(animationDuration, delay: 0.0, options: UIViewAnimationOptions(rawValue: UInt(animationCurve << 16)), animations: {
            
            // Set view properties in here that you want to match with the animation of the keyboard
            // If you need it, you can use the kbSize property above to get the keyboard width and height.
            }, completion: nil)
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        var userInfo = notification.userInfo!
        
        // Get the keyboard height and width from the notification
        // Size varies depending on OS, language, orientation
        var kbSize = (userInfo[UIKeyboardFrameEndUserInfoKey] as! NSValue).CGRectValue().size
        var durationValue = userInfo[UIKeyboardAnimationDurationUserInfoKey] as! NSNumber
        var animationDuration = durationValue.doubleValue
        var curveValue = userInfo[UIKeyboardAnimationCurveUserInfoKey] as! NSNumber
        var animationCurve = curveValue.integerValue
        
        UIView.animateWithDuration(animationDuration, delay: 0.0, options: UIViewAnimationOptions(rawValue: UInt(animationCurve << 16)), animations: {
            
            // Set view properties in here that you want to match with the animation of the keyboard
            // If you need it, you can use the kbSize property above to get the keyboard width and height.
            }, completion: nil)
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

