//  ViewController.swift
//  Adarsh
//
//  Created by apple on 10/02/20.
//  Copyright © 2020 apple. All rights reserved.

import UIKit

class DecryptController: UIViewController {
    
    @IBOutlet weak var resultTextView: UITextView!
    @IBOutlet weak var decodeTextField: UITextField!
    @IBOutlet weak var decryptButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Decryption"
        // Do any additional setup after loading the view, typically from a nib.
    }
    
     @IBAction func decryptButtonAction(_ sender: Any) {
        var newString1=Array(decodeTextField.text!)
        var count1=0
        var finalString="";
        var number=49
        for code in (decodeTextField.text!).utf8 {
            if code>=49 && code<=57 {
                number=Int(code);
            } else {
                for _ in 49..<number {
                    finalString+="\(newString1[count1-2])"
                }
                finalString+="\(newString1[count1])"
            }
            count1+=1
        }
        for _ in 49..<number {
            finalString+="\(newString1[count1-2])"
        }
        resultTextView.text=finalString;
     }
}
