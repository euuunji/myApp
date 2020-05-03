//
//  ViewController.swift
//  myApp
//
//  Created by SWUCOMPUTER on 2020/05/01.
//  Copyright © 2020 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var nameLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! MenuViewController
        if nameLabel.text == "" {
            destination.name = "user"
        }
        else {
            destination.name = nameLabel.text
        }
    }
    

}

