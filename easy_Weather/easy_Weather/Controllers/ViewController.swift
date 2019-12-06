//
//  ViewController.swift
//  easy_Weather
//
//  Created by Mohammed Drame on 11/14/19.
//  Copyright © 2019 Mo Drame. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
// Instances
    var textFieldModelDelegate =  TextFieldModelDelegate()

// IBoutlets
    @IBOutlet weak var textFieldOutlet: UITextField!
    @IBOutlet weak var searchButton: UIButton!
    
    
    
    
    func callAllTextFieldFunctionHere() {
        textFieldOutlet.delegate = self
        // TextFieldPlace Holder

    }
    
    func callAllGoButtonFunctionHere() {
        
    }
    
    
  /* = = = = = = = = = = = = = = = = = = = = = = */
    // textField delegate code
    /* = = = = = = = = = = = = = = = = = = = = = = */
    
    // fun allows user to hit the return button on the keypad
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // if user do'nt write nothing in search field make them to.
        let yesUserDidEnterString =  TextFieldModelDelegate.userEnterTextOrNot(textField: textField)
        return yesUserDidEnterString // Bool
        
    }
    
    
    
    /* = = = = = = = = = = = = = = = = = = = = = = */
    // Go Button
    /* = = = = = = = = = = = = = = = = = = = = = = */
    
    
    
    @IBAction func goButton(_ sender: UIButton) {
        while  TextFieldModelDelegate.userEnterTextOrNot(textField: textFieldOutlet) {
        textFieldOutlet.endEditing(true)
        print(textFieldOutlet.text!) // usage of ! becasue I made sure string pass was through.
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        callAllTextFieldFunctionHere()
        callAllGoButtonFunctionHere()
        
        // Do any additional setup after loading the view.
    }


}

