//
//  searchVC.swift
//  easy-weather-source-file
//
//  Created by Mohammed Drame on 3/2/18.
//  Copyright © 2018 Mohammed Drame. All rights reserved.
//

import UIKit


protocol textEnterDelegate {
    func cityEnter (city: String)

}

class searchVC: UIViewController {
    
    
    var delegate : textEnterDelegate? = nil
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var textField: UITextField!
    
    
    
    
    @IBAction func searchButtonPress(_ sender: UIButton) {
        
        let cityTextField = textField.text!
        
        delegate?.cityEnter(city: cityTextField)
        
        
        dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
