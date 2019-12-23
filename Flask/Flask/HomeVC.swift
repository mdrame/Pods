//
//  HomeVC.swift
//  Flask
//
//  Created by Mohammed Drame on 12/21/19.
//  Copyright © 2019 Mo Drame. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {
 
    
    
    // Global Variables
    
    var data : String?
    
    
    
    @IBOutlet weak var label: UILabel!
    
    
    @IBAction func add(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "screen") as! DetailVC
        vc.delegate = self
        present(vc, animated: true, completion: nil)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
     
    
    }




}


extension HomeVC: Data {
    
    func saveData(text: String) {
        label.text = text
    }
    
}
