//  ViewController.swift
//  Adarsh
//
//  Created by apple on 10/02/20.
//  Copyright © 2020 apple. All rights reserved.

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var encryptButton: UIButton!
    @IBOutlet weak var decryptButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "encryptSegueIdentifier" {
            // Nothing really to do here, since it won't be fired unless
            // shouldPerformSegueWithIdentifier() says it's ok. In a real app,
            // this is where you'd pass data to the success view controller.
        } else if segue.identifier == "decryptSegueIdentifier" {
            
        }
    }

}

