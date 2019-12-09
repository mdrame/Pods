//
//  ViewController.swift
//  easy_Weather
//
//  Created by Mohammed Drame on 11/14/19.
//  Copyright © 2019 Mo Drame. All rights reserved.
import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
// Instances
    var api = Model()
  

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
        if textFieldOutlet.userEnterTextOrNot() == true{
            textFieldOutlet.endEditing(true)
            api.get(city: textFieldOutlet.text ?? "London") // making API Call
            return true
        } else {
            print("Please Enter something")
            return false
        }
    }
    
    func textFieldTextVerificationUIButton() {
        if textFieldOutlet.userEnterTextOrNot() == true{
            textFieldOutlet.endEditing(true)
            api.get(city: textFieldOutlet.text ?? "London")
               } else {
                   print("Please Enter something 2")
            textFieldOutlet.endEditing(false)
               }
    }
    
    
    /* = = = = = = = = = = = = = = = = = = = = = = */
    // textField delegate code below
    /* = = = = = = = = = = = = = = = = = = = = = = */
//    
//    func textFieldDidEndEditing(_ textField: UITextField) {
//        // textField only ends editing our erro handling code succecced.
//        if let city = textField.text {
//            api.get(city: city)
//        }
//        
//        textFieldOutlet.text = ""
//    }
    
    
 
    
  /* = = = = = = = = = = = = = = = = = = = = = = */
    // textField delegate code below
    /* = = = = = = = = = = = = = = = = = = = = = = */
    
    // fun allows user to hit the return button on the keypad
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        userDidEnterString()
    }
    
    
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textFieldOutlet.text != "" {
            return true
        }else {
            return false
        }
        
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

