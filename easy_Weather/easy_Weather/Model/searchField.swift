//
//  searchField.swift
//  easy_Weather
//
//  Created by Mohammed Drame on 12/5/19.
//  Copyright © 2019 Mo Drame. All rights reserved.
//

import Foundation
import UIKit

class TextFieldModelDelegate: UITextField {
  
    // Instance
    var customeTextfieldClass = CustomeTextField()
    
    func userEnterTextOrNot(textField: UITextField) -> Bool  {
        
        let text = textField.text
        
        switch text?.count {
        case 0:
            
            return false
        default:
            return true
        }
    }
    
    
    
 
    
    
    
    
}
