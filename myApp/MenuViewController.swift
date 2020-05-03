//
//  MenuViewController.swift
//  myApp
//
//  Created by SWUCOMPUTER on 2020/05/01.
//  Copyright © 2020 SWUCOMPUTER. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    @IBOutlet var displayLabel: UILabel!
    var name : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayLabel.text = name + "님 환영합니다!"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toFourLetterView"{
            let destination = segue.destination as! FourLetter_StudyViewController
            destination.name = name
        } else if segue.identifier == "toGrammarView"{
            let destination = segue.destination as! GrammarViewController
            destination.name = name
        }else{
            let destination = segue.destination as! KoreanViewController
            destination.name = name
        }
            

    }
    
}
