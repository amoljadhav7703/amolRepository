//
//  SecondViewController.swift
//  SwiftDemo
//
//  Created by arvind on 12/25/15.
//  Copyright © 2015 arvind. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet var Btnext : UIButton!
    @IBOutlet var BtnTable : UIButton!
   // @IBOutlet var activityIndicator : UIActivityIndicatorView!
    
    
    
    func showActivityIndicatory(uiView: UIViewController) {
        
        var actInd : UIActivityIndicatorView = UIActivityIndicatorView(frame: CGRectMake(0,0, 50, 50)) as UIActivityIndicatorView
        actInd.center = self.view.center
        actInd.hidesWhenStopped = true
        actInd.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.Gray
        view.addSubview(actInd)
        actInd.startAnimating()
        actInd.stopAnimating()

    }

    
    
    @IBAction func nextView(sender: UIButton) {
        
        let vc = ThirdViewController(nibName: "ThirdViewController", bundle: nil)
        navigationController?.pushViewController(vc, animated: true )
        
                
        /*let pieVC = SecondViewController(nibName: "SecondViewController", bundle: nil)
        // pieVC.modalTransitionStyle = UIModalTransitionStyle.CrossDissolve
        presentViewController(pieVC, animated: true, completion: nil)*/
        
    }
    
    
    @IBAction func tableView(sender: UIButton) {
        
        let vc = MainViewController(nibName: "MainViewController", bundle: nil)
        navigationController?.pushViewController(vc, animated: true )
        
        
        /*let pieVC = SecondViewController(nibName: "SecondViewController", bundle: nil)
        // pieVC.modalTransitionStyle = UIModalTransitionStyle.CrossDissolve
        presentViewController(pieVC, animated: true, completion: nil)*/
        
    }

    

    override func viewDidLoad() {
        super.viewDidLoad()
       
      

        // Do any additional setup after loading the view.
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
