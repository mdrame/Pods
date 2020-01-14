//
//  HomeViewController.swift
//  Flask
//
//  Created by Mohammed Drame on 12/23/19.
//  Copyright © 2019 Mo Drame. All rights reserved.
//

import UIKit

class HomeViewController: UITableViewController{
    
    
    
    // - - - - - - - - - -  Outlets - - - - - - - -  //
    
    
    
    // - - - - - - - - - -  Vars - - - - - - - -  //
    var dataBase = [String]()
    
    
    
    
    // - - - - - - - - - -  Action - - - - - - - -  //
    
    
    
    
    // - - - - - - - - - -  Delegates - - - - - - - -  //

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataBase.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = dataBase[indexPath.row]
        return cell
    }
    
    
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        performSegue(withIdentifier: "toDetail", sender: self)
//    }
    
    
    
    
    func setUI() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "➕", style: .plain, target: self, action: #selector(leftButtonHnadler))
    }
    
    @objc func leftButtonHnadler() {
        // Create UIAlert
        let alertController = UIAlertController(title: "Add To List", message: "Type wht you want to add to your todo list", preferredStyle: .alert)
        alertController.addTextField { (textfiedm: UITextField!) in
            textfiedm.placeholder = "Enter todo list"
            
        }
        let action = UIAlertAction(title: " S A V E ", style: .default) { (action: UIAlertAction) in
            let words = alertController.textFields![0]
            self.dataBase.append(words.text!)
        }
        alertController.addAction(action)
        self.present(alertController, animated: true, completion: nil)
        self.tableView.reloadData()
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
      
        setUI()
        // Do any additional setup after loading the view.
    }

    
 

  

}
