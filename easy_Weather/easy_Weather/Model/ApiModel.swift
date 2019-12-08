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
    let openWeatherUrl = "api.openweathermap.org/data/2.5/weather?"
    let apiKey = "8b8286cb872c5238a1941724160e04b9"
    
    
    // methods
    // String concatination // adding requre api paramenter through function.
    func userEnter(city textField: String) -> String { //
        
        let urlString = "\(openWeatherUrl)q=\(textField)&key=\(apiKey)"
        print("Api Key: \(urlString)")
        return urlString
    }
    
    // Making API Call
    func performRequest(urlString: String) {
        // URL() is a struct that verify a url string is correct by lokey callign with it us knowing
        if let url = URL(string: urlString) {
                // URL Makes the networking / connection
            let session = URLSession(configuration: .default)
//            let task = session.dataTask(with: url, completionHandler: handle(data: response: error: ))
//            task.resume()
        }
        
    }
    
    
    func handle(data: Data?, response: URLResponse, error: Error?) {
        if error != nil {
            print("We got a problem here")
            print(error!)
            
            return
        }
        
        
        if let successFullData = data {
            let dataString = String(data: successFullData, encoding: .utf8)
            print(dataString ?? "404 Error: Connection Not Successful")
        }
    }
    

    
    
    
    
}
