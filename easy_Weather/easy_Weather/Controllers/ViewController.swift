//
//  ViewController.swift
//  easy_Weather
//
//  Created by Mohammed Drame on 11/14/19.
//  Copyright © 2019 Mo Drame. All rights reserved.
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
    // textField delegate code below
    /* = = = = = = = = = = = = = = = = = = = = = = */
    
    // fun allows user to hit the return button on the keypad
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        switch textFieldModelDelegate.userEnterTextOrNot(textField: textFieldOutlet) {
        case true:
             print(" User enter something ")
              return true
        case false:
            print(" TextField is empty")
            textField.placeholder = "Please Enter Something"
            return false
        }
    
    }
    
    
    
    /* = = = = = = = = = = = = = = = = = = = = = = */
    // Go Button
    /* = = = = = = = = = = = = = = = = = = = = = = */
    
    
    
    @IBAction func goButton(_ sender: UIButton) {
       
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        callAllTextFieldFunctionHere()
        callAllGoButtonFunctionHere()
        
        // Do any additional setup after loading the view.
    }


}

