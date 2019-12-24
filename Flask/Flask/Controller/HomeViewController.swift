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
    
    
    
    
    
    // - - - - - - - - - -  Action - - - - - - - -  //
    
    
    
    
    // - - - - - - - - - -  Delegates - - - - - - - -  //

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = " TEST "
        return cell
    }
    
    
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        performSegue(withIdentifier: "toDetail", sender: self)
//    }
    
    
    
    
    func setUI() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "➕", style: .plain, target: self, action: #selector(leftButtonHnadler))
    }
    
    @objc func leftButtonHnadler() {
        performSegue(withIdentifier: "toDetail", sender: self)
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        setUI()
        // Do any additional setup after loading the view.
    }
    

  

}
