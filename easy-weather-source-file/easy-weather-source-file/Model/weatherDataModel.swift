//
//  weatherDataModel.swift
//  easy-weather-source-file
//
//  Created by Mohammed Drame on 3/3/18.
//  Copyright © 2018 Mohammed Drame. All rights reserved.
//

import Foundation


class weatherDataModel {
    
    
    var tempreture = 0
    var city = ""
    var weatherIcon = ""
    var condition = 0
    




// am using emojis as the icon for the weather icons and so am creating an array of them

let appIconArray : [String: String] = ["sunny": "🌞", "Snow" : "❄️", "Rainning" : "🌧", "Windy":"🌬", "Normal": "⛅️", "None":"❌"]
    
    
   
    
    
    
    
    func updateWeatherIcon(condition: Int) -> String {
        
        switch (condition) {
            
        case 0...300 :
            return appIconArray["Windy"]!
            
            
        case 301...500 :
            return appIconArray["Rainning"]!
            
        case 501...600 :
            return appIconArray["Rainning"]!
            
        case 601...700 :
            return appIconArray["Snow"]!
            
        case 701...771 :
            return appIconArray["Windy"]!
            
        case 772...799 :
            return appIconArray["Windy"]!
            
        case 800 :
            return appIconArray["sunny"]!
            
        case 801...804 :
            return appIconArray["Normal"]!
            
        case 900...903, 905...1000  :
            return appIconArray["Snow"]!
            
        case 903 :
            return appIconArray["Snow"]!
            
        case 904 :
            return appIconArray["sunny"]!
            
        default :
            return appIconArray["None"]!
        }
        
    }


}
