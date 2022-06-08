//
//  ViewController.swift
//  IntelligentBudgetIOS
//
//  Created by Isaac David Franco Niño on 01/06/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tfSaldo: UITextField!
    
    @IBOutlet weak var tfNuevoSaldo: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    

    @IBAction func btnModificar(_ sender: Any) {
        
        if let NuevoSaldo = Double (tfNuevoSaldo.text!){
            
            if NuevoSaldo == 0 {
                alertaA()
                tfSaldo.text=NuevoSaldo.description
                
            }else{
                
                tfSaldo.text=NuevoSaldo.description
            }
        }
        
        else{
            alertaLetras()
        }
    }
    
    func alertaLetras(){
        //Cuadro de dialogo
        let alerta = UIAlertController(title: "Aviso", message: "Error en el dato de entrada (No se admiten letras ni campos vacios)", preferredStyle: .alert)
        let aceptar = UIAlertAction(title: "Aceptar", style: .default)
        alerta.addAction(aceptar)
        present(alerta, animated: true)
    }
    func alertaA(){
        //Cuadro de dialogo
        let alerta = UIAlertController(title: "Aviso", message: "Tu saldo es de 0 registra otro monto", preferredStyle: .alert)
        let aceptar = UIAlertAction(title: "OK", style: .default)
        alerta.addAction(aceptar)
        present(alerta, animated: true)
    }
    
    
}

