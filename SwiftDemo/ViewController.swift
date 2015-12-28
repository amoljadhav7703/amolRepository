//
//  ViewController.swift
//  SwiftDemo
//
//  Created by arvind on 12/24/15.
//  Copyright © 2015 arvind. All rights reserved.
//


/*protocol ViewControllerDelegate{
    func myModalDidFinish(controller:ViewController, pie:String)
}*/

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var Btn : UIButton!
    @IBOutlet var BtnAdd : UIButton!
    @IBOutlet var Btnnext : UIButton!
    @IBOutlet var txt1 : UITextField!
    @IBOutlet var txt2 : UITextField!
    @IBOutlet var txt3 : UITextField!
    @IBOutlet var lbl1 : UILabel!
 
    
    @IBAction func nextView(sender: UIButton) {
        
        let vc = SecondViewController(nibName: "SecondViewController", bundle: nil)
        navigationController?.pushViewController(vc, animated: true )
        
        
        /*let pieVC = SecondViewController(nibName: "SecondViewController", bundle: nil)
       // pieVC.modalTransitionStyle = UIModalTransitionStyle.CrossDissolve
        presentViewController(pieVC, animated: true, completion: nil)*/

            }
    
    
    @IBAction func calculate(sender: UIButton) {
    
    // toInt returns optional that's why we used a:Int?
    let a:Int? = Int(txt1.text!)
    let b:Int? = Int(txt2.text!)
    // check a and b before unwrapping using !
    let ans = a! + b!
    txt3.text = "Answer is \(ans)"       // answerLabel ie UILabel
    
       }
    
    
     func addnum(){
        
        //var Number1 = txt1.text.toInt()
        //var Number2 = txt2.text.toInt()
        
        //var Duration = Number1 * Number2
        
        lbl1.text = NSString(format:"Wellcome!!!")as String;
           }
    
    
  /*   @IBAction func nextPage(sender: UIButton) {
        
                    self.performSegueWithIdentifier("segueIdentifier", sender: self)
            }*/
    

        @IBAction func showAlertButtonTapped(sender: UIButton) {
            
            // create the alert
            let alert = UIAlertController(title: "Hey Friends", message: "This is my first Swift Program.", preferredStyle: UIAlertControllerStyle.Alert)
            
            // add an action (button)
            
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            
            alert.addAction(UIAlertAction(title: "Continue", style: UIAlertActionStyle.Default, handler:{ action in
                
                // do something like...
                self.addnum()
                
            }))
            
            // show the alert
            self.presentViewController(alert, animated: true, completion: nil)
        }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

