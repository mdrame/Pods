//
//  detailViewController.swift
//  Flask
//
//  Created by Mohammed Drame on 12/22/19.
//  Copyright © 2019 Mo Drame. All rights reserved.
//

import UIKit

protocol Data {
    func saveData(text: String)
}



class DetailVC: UIViewController {
    
    
    var delegate: Data?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    
    
    // Outlets
    @IBOutlet weak var textField: UITextField!
    
    
    
    // Actions
    
    @IBAction func save(_ sender: UIButton) {
        
        if let data = textField.text {
            delegate?.saveData(text: data)
//            print(data)
            dismiss(animated: true, completion: nil)
        }
        
    }
    
    
    
    
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
