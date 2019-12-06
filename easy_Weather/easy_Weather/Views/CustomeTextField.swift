//
//  CustomeTextField.swift
//  easy_Weather
//
//  Created by Mohammed Drame on 12/5/19.
//  Copyright © 2019 Mo Drame. All rights reserved.
//

import UIKit

class CustomeTextField: UITextField {
    // Programmatic Initialization
       override init(frame: CGRect) {
       super.init(frame: frame)
       // Add custom code here
       // We don't need to call our fun here cause this for programmatic created UIView object
       }
       // Story Board Initialization
       required init?(coder aDecorder: NSCoder) {
       super.init(coder: aDecorder)
       // Add custom code here
           
           layoutStuff()
            addLeftView()
      
       
       }
       
       
       /* = = = = = = = = = = = = = = = = = = = = = = */
       // function below
       /* = = = = = = = = = = = = = = = = = = = = = = */
       
       private func layoutStuff() {
           
           // border
           layer.borderWidth = 2
           layer.borderColor = #colorLiteral(red: 0.08545988935, green: 0.09140480133, blue: 0.09901730609, alpha: 0.3979698504)
           layer.cornerRadius = 9
           
           // shadow
           layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.4357119278)
           layer.shadowOffset = CGSize(width: 0, height: 0)
          
           layer.shadowRadius = 10
           layer.shadowOpacity = 0.9
           
       }
    
    
    /* = = = = = = = = = = = = = = = = = = = = = = */
    // function below
    /* = = = = = = = = = = = = = = = = = = = = = = */
    
    
    private func addLeftView() {
        // creating tiny view that will be added to the side to the textField
        let textFieldLeftSideView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: self.frame.height ))
        textFieldLeftSideView.backgroundColor = #colorLiteral(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.0469025088)
        // assing tiny view to leftside of textfield
        self.leftView = textFieldLeftSideView
        self.leftViewMode = .always // activating lefMode to always
    }
    
    
    
    
    
    func Test() {
        print("Testing")
    }
    
    
    
    
    
 
    
    
       
       

}
