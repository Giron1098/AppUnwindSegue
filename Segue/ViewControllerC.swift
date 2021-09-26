//
//  ViewControllerC.swift
//  Segue
//
//  Created by Mac15 on 19/09/21.
//

import UIKit

class ViewControllerC: UIViewController {

    @IBOutlet weak var TF_Nombre: UITextField!
    
    @IBOutlet weak var TF_Warning: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
                
                //Descomentar, si el tap no debe interferir o cancelar otras acciones
                //tap.cancelsTouchesInView = false
                
                view.addGestureRecognizer(tap)    }
    
    @IBAction func BTN_Back_to_B(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func BTN_Go_back_to_A(_ sender: UIButton) {
        
        performSegue(withIdentifier: "unwind_to_A", sender: self)
        
    }
    
    @IBAction func BTN_Go_back_to_B(_ sender: UIButton) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if(TF_Nombre.text != "")
        {
            let view_B = segue.destination as! ViewControllerB
            view_B.nombre = TF_Nombre.text!
        } else {
            TF_Warning.text = "Debe ingresar un nombre"
        }
    }
    
    @objc func dismissKeyboard() {
         //Las vistas y toda la jerarquía renuncia a responder, para esconder el teclado
        view.endEditing(true)
        
    }
}
