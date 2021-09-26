//
//  ViewController.swift
//  Segue
//
//  Created by Mac15 on 19/09/21.
//

import UIKit

class ViewController: UIViewController {
    
    var nombreA:String!
    var mensajeA:String!

    @IBOutlet weak var LBL_Mensaje: UILabel!
    @IBOutlet weak var LBL_NombreA: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
                
                //Descomentar, si el tap no debe interferir o cancelar otras acciones
                //tap.cancelsTouchesInView = false
                
                view.addGestureRecognizer(tap)    }

    @IBAction func BTN_Go_To_B(_ sender: UIButton) {
        
        performSegue(withIdentifier: "Segue_A_to_B", sender: self)
        
    }
    
    @IBAction func unwind(_seg:UIStoryboardSegue) {
        
    }
    
    @IBAction func unwind_B_to_A(_seg:UIStoryboardSegue)
    {
        LBL_Mensaje.text = mensajeA!
        LBL_NombreA.text = nombreA!
    }
    
    @objc func dismissKeyboard() {
         //Las vistas y toda la jerarquía renuncia a responder, para esconder el teclado
        view.endEditing(true)
        
    }
}

