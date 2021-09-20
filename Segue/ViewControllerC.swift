//
//  ViewControllerC.swift
//  Segue
//
//  Created by Mac15 on 19/09/21.
//

import UIKit

class ViewControllerC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func BTN_Back_to_B(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func BTN_Go_back_to_A(_ sender: UIButton) {
        
        performSegue(withIdentifier: "unwind_to_A", sender: self)
        
    }
    

}
