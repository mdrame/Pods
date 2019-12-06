//
//  searchField.swift
//  easy_Weather
//
//  Created by Mohammed Drame on 12/5/19.
//  Copyright © 2019 Mo Drame. All rights reserved.
//

import Foundation
import UIKit

class TextFieldModelDelegate {
  
    
    static func userEnterTextOrNot(textField: UITextField) -> Bool  {
        
        if textField.text == nil {
            // pop alert or change place holder to make user to enter string, amd display warning sign on the textField leftCorner.
            print("False")
            return false
        } else {
            return true
        }
   
    }
    
    
    
    
    
}
