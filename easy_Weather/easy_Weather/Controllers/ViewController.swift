//
//  ViewController.swift
//  easy_Weather
//
//  Created by Mohammed Drame on 11/14/19.
//  Copyright © 2019 Mo Drame. All rights reserved.
import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
// Instances
  

// IBoutlets
    @IBOutlet weak var textFieldOutlet: CustomeTextField!
    @IBOutlet weak var searchButton: UIButton!
    
    
    
    
    func callAllTextFieldFunctionHere() {
        textFieldOutlet.delegate = self
        // TextFieldPlace Holder
        
    }
    
    
    
    /* = = = = = = = = = = = = = = = = = = = = = = */
    // textField delegate code below
    /* = = = = = = = = = = = = = = = = = = = = = = */
    
    
    // function making sure user enter something for texfield should return
    func userDidEnterString() -> Bool {
        switch textFieldOutlet.userEnterTextOrNot() {
                   case true:
                        print(" User enter text ")
                        textFieldOutlet.text = ""
                        textFieldOutlet.endEditing(self.userDidEnterString()) // answer of this function is base on func userDidEnterstring
                         return true
                   case false:
                       print(" TextField is empty")
                       textFieldOutlet.placeholder = "Please Enter Something"
                       return false
                   }
    }
    
    func textFieldTextVerificationUIButton() {
        switch textFieldOutlet.userEnterTextOrNot() {
        case true:
             print(" User enter something ")
             textFieldOutlet.text = ""
              textFieldOutlet.endEditing(userDidEnterString()) // answer of this function is base on func userDidEnterstring
        case false:
            print(" TextField is empty")
            textFieldOutlet.placeholder = "Please Enter Something"
        }
    }
    
    
    /* = = = = = = = = = = = = = = = = = = = = = = */
    // textField delegate code below
    /* = = = = = = = = = = = = = = = = = = = = = = */
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        // do something when the user is not editin any more.
    }
    
    
 
    
  /* = = = = = = = = = = = = = = = = = = = = = = */
    // textField delegate code below
    /* = = = = = = = = = = = = = = = = = = = = = = */
    
    // fun allows user to hit the return button on the keypad
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        userDidEnterString()
    }
    
    
    
    /* = = = = = = = = = = = = = = = = = = = = = = */
    // Go Button
    /* = = = = = = = = = = = = = = = = = = = = = = */
    
    
    
    @IBAction func goButton(_ sender: UIButton) {
        textFieldOutlet.endEditing(userDidEnterString()) 
        textFieldTextVerificationUIButton()
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        callAllTextFieldFunctionHere()
       
        
        
        
        // Do any additional setup after loading the view.
    }


}

