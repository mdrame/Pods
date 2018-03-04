//
//  ViewController.swift
//  easy-weather-source-file
//
//  Created by Mohammed Drame on 3/2/18.
//  Copyright © 2018 Mohammed Drame. All rights reserved.
//

import UIKit
import CoreLocation // CoreLocation libary that prompt an alert on the screen and ask the user if you could use varir current location throught GPS         cordinate.....
import Alamofire
import SwiftyJSON


class ViewController: UIViewController, CLLocationManagerDelegate, textEnterDelegate {
    
    
    
    
 
    
    // UI objects
    
    @IBOutlet weak var CurrentLocation: UILabel!
    @IBOutlet weak var Tempreture: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var weatherIcon: UILabel!
    @IBOutlet weak var advasory: UILabel!
    
    
    
    // advasory property ( i could have use this in an array, but am doing this so any new developer can understand what am trynn immipliment 
        
        let sun = " * You Gone need your glass / face cape 🕶 🧢.                                * You Gone need some summer Clothing 👕👖.                         *Its a beautiful day to hit the beach bro. 🏖"
        
        let snowing = " * Snowing Like Crazy .                                * You Gone need some winter Clothing 🧥 👢.                         * Ice Skiting tho or Snow boarding. 🏂 ⛸"
        
        let rain = " * gone be a rainning day 🌦.                                * get a umbrella 🌂.                         "
        
        let wind = " * just wear something confortable."
        
        let regular = " * regular day wat ever u like ."
        
        let nono = " * No Weather Display."
        

    
    
    
    
    let WEATHER_URL = "http://api.openweathermap.org/data/2.5/weather"
    let APP_ID = "e72ca729af228beabd5d20e3b7749713"
    
    
    
     // creating an object that will hold the Location data
    
    let locationManager = CLLocationManager()
    let weatherDataBase = weatherDataModel()
 
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //TODO:Set up the location manager here.
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    
    }
    
    
    
    
    
    

   // networking with Alamofire
    
    func getWeatherData(url: String, parameters: [String: String]) {
        
        Alamofire.request(url, method: .get, parameters: parameters).responseJSON {
            response in
            if response.result.isSuccess {
                
                print("Success! Got the weather data")
                
                let weatherJSON : JSON = JSON(response.result.value!)
                
              self.updateWeatherData(json: weatherJSON)
                
                
               
                
            }
            else {
                print("Error \(String(describing: response.result.error))")
            }
        }
        
    }
    
    
    
    
    // converting data in JSON
    
    func updateWeatherData(json : JSON) {
        
        if let tempResult = json["main"]["temp"].double {
            
            weatherDataBase.tempreture = Int(tempResult - 273.15)
            weatherDataBase.city = json["name"].stringValue
            weatherDataBase.weatherIcon = weatherDataBase.updateWeatherIcon(condition: weatherDataBase.condition)
             weatherDataBase.condition = json["weather"][0]["id"].intValue
 
            updateUiUx()
        }
        else {
            
            CurrentLocation.text = " Tempreture Unavailable"
            Tempreture.text = "0°"
            weatherIcon.text = weatherDataBase.appIconArray["None"]!
            
        }
        
        
        
        
    }
    
    
    
    func updateUiUx () {
    
        Tempreture.text = ("\(weatherDataBase.tempreture)°c")
        CurrentLocation.text = ("\(weatherDataBase.city)📍")
        weatherIcon.text = weatherDataBase.weatherIcon
        date.text = " March 2, 2018"
    
        if weatherDataBase.weatherIcon == weatherDataBase.appIconArray["sunny"]! {
            advasory.text = sun
        } else if weatherDataBase.weatherIcon == weatherDataBase.appIconArray["Snow"]! {
            advasory.text = snowing
        } else if weatherDataBase.weatherIcon == weatherDataBase.appIconArray["Rainning"]! {
            advasory.text = rain
        } else if weatherDataBase.weatherIcon == weatherDataBase.appIconArray["Windy"]! {
            advasory.text = wind
        } else if weatherDataBase.weatherIcon == weatherDataBase.appIconArray["Normal"]! {
            advasory.text = regular
        } else if weatherDataBase.weatherIcon == weatherDataBase.appIconArray["None"]! {
            advasory.text = nono
        }
        
    
    }
    
    
    
    

    

    
    
    // didUpdateLocations
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations[locations.count - 1]
        if location.horizontalAccuracy > 0 {
            
            self.locationManager.stopUpdatingLocation()
            locationManager.delegate = nil
            
            print("longitude = \(location.coordinate.longitude), latitude = \(location.coordinate.latitude)")
            
            let latitude = String(location.coordinate.latitude)
            let longitude = String(location.coordinate.longitude)
            
            let params : [String : String] = ["lat" : latitude, "lon" : longitude, "appid" : APP_ID]
            
            getWeatherData(url: WEATHER_URL, parameters: params)
        }
    }
    
    
    //didFailWithError
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
       
    }
    
   
    
   
  
    
    
   
    
   
    func cityEnter(city: String) {
        let params = [ "q": city, "appid": APP_ID]
        
        getWeatherData(url: WEATHER_URL, parameters: params)
    }
    
    
    
    
    @IBAction func searchCityButton(_ sender: UIButton) {
        
        performSegue(withIdentifier: "segue", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         var destination = segue.destination as! searchVC
            
            destination.delegate = self
        
    }
    

}

