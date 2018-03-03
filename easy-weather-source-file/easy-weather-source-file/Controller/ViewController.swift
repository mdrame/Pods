//
//  ViewController.swift
//  easy-weather-source-file
//
//  Created by Mohammed Drame on 3/2/18.
//  Copyright © 2018 Mohammed Drame. All rights reserved.
//

import UIKit
import CoreLocation      // CoreLocation libary that prompt an alert on the screen and ask the user if you could use their current location throught GPS cordinate.....


class ViewController: UIViewController, CLLocationManagerDelegate {
    
    
    
    // creating an object that will hold the Location data
    
    var locationManager = CLLocationManager()
    
    
    
    // note ** The weather API requires the longitue and latitue of user current location inorder to to send data to app..
    
    
    // API request site and site APPiddd
    
    let WEATHER_URL = "http://api.openweathermap.org/data/2.5.weather"
    let APP_ID = "e66d7c511ebd601226907560803c5e2e"
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

