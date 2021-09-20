//
//  ViewControllerB.swift
//  Segue
//
//  Created by Mac15 on 19/09/21.
//

import UIKit

class ViewControllerB: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func BTN_Back_to_A(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func BTN_B_to_C(_ sender: UIButton) {
        
        performSegue(withIdentifier: "Segue_B_to_C", sender: self)
        
    }
    

}
