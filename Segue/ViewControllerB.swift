//
//  ViewControllerB.swift
//  Segue
//
//  Created by Mac15 on 19/09/21.
//

import UIKit

class ViewControllerB: UIViewController {
    
    var nombre : String!
    var mensaje: String!

    @IBOutlet weak var LBL_Nombre: UILabel!
    
    @IBOutlet weak var TF_Mensaje: UITextField!
    
    @IBOutlet weak var LBL_WarningB: UILabel!
    
    override func viewDidLoad() {
    
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
                
                //Descomentar, si el tap no debe interferir o cancelar otras acciones
                //tap.cancelsTouchesInView = false
                
                view.addGestureRecognizer(tap)    }
    
    @IBAction func BTN_Back_to_A(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func BTN_B_to_C(_ sender: UIButton) {
        
        performSegue(withIdentifier: "Segue_B_to_C", sender: self)
        
    }
    
    @IBAction func unwind_C_to_B(_seg:UIStoryboardSegue)
    {
        LBL_Nombre.text = nombre!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(TF_Mensaje.text != "" && LBL_Nombre.text != "")
        {
            let view_A = segue.destination as! ViewController
            view_A.nombreA = LBL_Nombre.text!
            view_A.mensajeA = TF_Mensaje.text!
        } else {
            LBL_WarningB.text = "Debe ingresar un mensaje"
        }
    }

    @objc func dismissKeyboard() {
         //Las vistas y toda la jerarquía renuncia a responder, para esconder el teclado
        view.endEditing(true)
        
    }
    
}
