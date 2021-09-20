//
//  ViewController.swift
//  Segue
//
//  Created by Mac15 on 19/09/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func BTN_Go_To_B(_ sender: UIButton) {
        
        performSegue(withIdentifier: "Segue_A_to_B", sender: self)
        
    }
    
    @IBAction func unwind(_seg:UIStoryboardSegue) {
        
    }
    
}

