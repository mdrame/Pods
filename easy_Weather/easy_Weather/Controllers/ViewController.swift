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
        
    }
    
  /* = = = = = = = = = = = = = = = = = = = = = = */
    // textField delegate code
    /* = = = = = = = = = = = = = = = = = = = = = = */
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // if user do'nt write nothing in search field make them to.
        let textFieldModelDelegate =  TextFieldModelDelegate.userEnterTextOrNot(textField: textField)
        
        return textFieldModelDelegate
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        callAllTextFieldFunctionHere()
        
        // Do any additional setup after loading the view.
    }


}

