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
           
           layerStuff()
           addLeftView()
            rightView()
       
       }
       
       
       /* = = = = = = = = = = = = = = = = = = = = = = */
       // function below
       /* = = = = = = = = = = = = = = = = = = = = = = */
       
       private func layerStuff() {
           
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
       
      let leftView = UIView(frame: CGRect(x: 9, y: 2, width: 20, height: 20))
        leftView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)
        self.leftView = leftView
        self.leftViewMode = .always
        
        
    }
    
    /* = = = = = = = = = = = = = = = = = = = = = = */
       // function below
       /* = = = = = = = = = = = = = = = = = = = = = = */
    
    
    func rightView() {
        
        
        let rightView = UIView(frame: CGRect(x: 19, y: 2, width: 50, height: 40))
              rightView.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 0)
        self.rightView = rightView
        self.rightViewMode = .always
    }
    
    
    /* = = = = = = = = = = = = = = = = = = = = = = */
       // function below
       /* = = = = = = = = = = = = = = = = = = = = = = */
    
    
  
    func test() {
        print("Testing")
    }
    
    
    
    func userEnterTextOrNot() -> Bool {
        
        if self.text != "" {
            return true
        } else {
            return false
        }
        
    }
    
    
    
 
    
    
       
       

}
