//
//  DetailVC.swift
//  Flask
//
//  Created by Mohammed Drame on 12/23/19.
//  Copyright © 2019 Mo Drame. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {
    
    
    // - - - - - - - - - -  Outlets - - - - - - - -  //
    @IBOutlet weak var textField: UITextField!
    
      
      
      // - - - - - - - - - -  Vars - - - - - - - -  //
      
      
      
      
      
      // - - - - - - - - - -  Action - - - - - - - -  //
      
      
      
      
      // - - - - - - - - - -  Delegates - - - - - - - -  //
    
    
    
    // SetUp UI
    func setUI() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .plain, target: self, action: #selector(rightButtonHnadler))
    }
    
    @objc func rightButtonHnadler() {
        navigationController?.popViewController(animated: true)
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUI()
        

        // Do any additional setup after loading the view.
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
