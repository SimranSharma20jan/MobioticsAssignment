//  ViewController.swift
//  Adarsh
//
//  Created by apple on 10/02/20.
//  Copyright © 2020 apple. All rights reserved.

import UIKit

class EncryptController: UIViewController {
    
    @IBOutlet weak var resultTextView: UITextView!
    @IBOutlet weak var encodeTextField: UITextField!
    @IBOutlet weak var encryptButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Encryption"
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func encryptButtonAction(_ sender: Any) {
        var player = Array(encodeTextField.text! + " ")
        var newString=""
        var count=1, k=1, m=0
        
        for _ in 0..<player.count {
            while k<player.count {
                if player[m]==player[k] {
                    count+=1
                    k+=1
                } else {
                    newString+="\(player[m])"+"\(count)"
                    if k<player.count {
                        m=k
                        k+=1
                    }
                    break;
                }
            }
            count=1
        }
        resultTextView.text=newString;
    }
    
}
