//
//  city search button.swift
//  easy-weather-source-file
//
//  Created by Mohammed Drame on 3/3/18.
//  Copyright © 2018 Mohammed Drame. All rights reserved.
//

import UIKit

class city_search_button: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.borderWidth = 6
        layer.cornerRadius = 10
        layer.borderColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
        
    }
}
