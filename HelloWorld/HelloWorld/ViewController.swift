//
//  ViewController.swift
//  HelloWorld
//
//  Created by Anthony Escalona on 3/14/15.
//  Copyright (c) 2015 AppCoda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showMessage(){
        let alertController = UIAlertController(title: "my 1st app", message: "Hello world", preferredStyle: UIAlertControllerStyle.Alert)
        
    alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        
    self.presentViewController(alertController, animated: true, completion: nil)
    }

}

