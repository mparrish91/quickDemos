//
//  PopOverTestViewController.swift
//  QuickDemos
//
//  Created by parry on 4/23/16.
//  Copyright © 2016 provoq. All rights reserved.
//

import UIKit

class PopOverTestViewController: UIViewController, UIPopoverPresentationControllerDelegate {

    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var slider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onButtonPressed(sender: AnyObject) {

        let storyboard : UIStoryboard = UIStoryboard(
            name: "Main",
            bundle: nil)
//        var popOverVC = storyboard.instantiateViewControllerWithIdentifier("popOver") as! PopOverTestViewController
        var popOverVC = storyboard.instantiateViewControllerWithIdentifier("dayshay") as! UIViewController



        popOverVC.modalPresentationStyle = .Popover
        popOverVC.preferredContentSize = CGSizeMake(200, 100)

        let popoverMenuViewController = popOverVC.popoverPresentationController
        popoverMenuViewController?.permittedArrowDirections = .Any
        popoverMenuViewController?.delegate = self
        popoverMenuViewController?.sourceView = sender as! UIView
        popoverMenuViewController?.backgroundColor = UIColor.greenColor()

        popoverMenuViewController?.sourceRect = CGRect(x: slider.frame.origin.x, y: slider.frame.origin.y, width: 1, height: 1)
//        presentViewController(popOverVC,animated: true,completion: nil)

        let alertController = UIAlertController(title: nil, message: nil, preferredStyle: .ActionSheet)

        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel) { (action) in
            // ...
        }
        alertController.addAction(cancelAction)

        let OKAction = UIAlertAction(title: "Take a Photo", style: .Default) { (action) in
            // ...
        }
        alertController.addAction(OKAction)

        let destroyAction2 = UIAlertAction(title: "Choose from Library", style: .Default) { (action) in
            print(action)
        }
        alertController.addAction(destroyAction2)

        let destroyAction3 = UIAlertAction(title: "Choose from Facebook", style: .Default) { (action) in
            print(action)
        }
        alertController.addAction(destroyAction3)

        let destroyAction4 = UIAlertAction(title: "Choose from Instagram", style: .Default) { (action) in
            print(action)
        }
        alertController.addAction(destroyAction4)
        
        self.presentViewController(alertController, animated: true) {
            // ...
        }
    }

    func adaptivePresentationStyleForPresentationController(
        controller: UIPresentationController!) -> UIModalPresentationStyle {
        return .None
    }

    func instagramPressed() {

        let alertController = UIAlertController(title: "Connect Instagram", message: "To chooose a picture from Instagram, you need to connect to Instagram first.", preferredStyle: .Alert)

        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel) { (action) in
            // ...
        }
        alertController.addAction(cancelAction)

        let OKAction = UIAlertAction(title: "Connect", style: .Default) { (action) in
            // ...
        }
        alertController.addAction(OKAction)
        
        self.presentViewController(alertController, animated: true) {
            // ...
        }
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
