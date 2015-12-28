//
//  ThirdViewController.swift
//  SwiftDemo
//
//  Created by arvind on 12/25/15.
//  Copyright © 2015 arvind. All rights reserved.
//

import UIKit


class ThirdViewController: UIViewController, UIImagePickerControllerDelegate,UIPopoverControllerDelegate,UINavigationControllerDelegate  {
    
    var picker:UIImagePickerController?=UIImagePickerController()
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet var imgBtn: UIButton!
       
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker?.delegate=self
               // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // Open Gallery button click
    @IBAction func OpenGallery(sender: AnyObject) {
        openGallary()
    }
    
   //Open Gallery(Photo browser)
    func openGallary()
    {
        picker!.allowsEditing = false
        picker!.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        presentViewController(picker!, animated: true, completion: nil)
        
        }
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    // ADD the selected img to ImgView:
    func imagePickerController(
        picker: UIImagePickerController,
        didFinishPickingMediaWithInfo info: [String : AnyObject])
    {
        let chosenImage = info[UIImagePickerControllerOriginalImage] as! UIImage //2
        imageView.contentMode = .ScaleAspectFit //3
        imageView.image = chosenImage //4
        dismissViewControllerAnimated(true, completion: nil) //5
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
