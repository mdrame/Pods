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
        
            switch textField.text {
            case "":
                //
                return false
            default:
                return true
            }
   
    }
    
    
    
    
}
