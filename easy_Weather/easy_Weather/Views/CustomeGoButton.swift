//
//  CustomeGoButton.swift
//  easy_Weather
//
//  Created by Mohammed Drame on 12/5/19.
//  Copyright © 2019 Mo Drame. All rights reserved.
//

import UIKit

class CustomeGoButton: UIButton {
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
         editGoButton()
        
     }
    
   private func editGoButton() {
    // Add Button editing code under here
    layer.cornerRadius = 6
    layer.shadowColor = #colorLiteral(red: 0.1318426728, green: 0.1439217925, blue: 0.158605963, alpha: 1)
    layer.shadowOffset = CGSize(width: 4, height: 4)
    layer.shadowOpacity = 0.5
    

    }

}
