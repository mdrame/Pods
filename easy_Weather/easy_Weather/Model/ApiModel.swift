//
//  ApiModel.swift
//  easy_Weather
//
//  Created by Mohammed Drame on 12/7/19.
//  Copyright © 2019 Mo Drame. All rights reserved.
//

import Foundation

struct Model {
    
    // properties
    let openWeatherUrl = "https//www.api.openweathermap.org/data/2.5/weather?"
    let apiKey = "6b7fda170a093cef98d8ee2fb042472b"
    
    
    // methods
    // String concatination // adding requre api paramenter through function.
    func get(city textField: String) { //
        
        let urlString = "\(openWeatherUrl)q=\(textField)&appid=\(apiKey)"
        print("Api Key: \(urlString)")
        performAPIRequest(test: textField)
    }
    
    // Making API Call
    func performAPIRequest(test string: String) {
        
        if let url = URL(string: string) { // THIS HERE CHECK IF THE GIVEN URL IS A STRING
           let session = URLSession(configuration: .default) // Starting the engine that process the url and go get the API call
            
            let task = session.dataTask(with: url, completionHandler: sessionTaskCompleted(data:response:error:))
            //
            task.resume()
        
    }
    }
    
    func sessionTaskCompleted(data: Data?, response: URLResponse?, error: Error?) {
        // error
        if error != nil {
            print(" ERROR BELOW ENCOUNTER ")
            print(error!)
            return // return terminate the fun
        }
        
        if let safeData = data {
            let dataConvertion = String(data: safeData, encoding: .utf8)
            print("DATA")
            print(dataConvertion)
        }
        
        
        
    }
    
    
 
    

    
    
    
    
}
