//
//  RegistrarGastosVC.swift
//  IntelligentBudgetIOS
//
//  Created by Isaac David Franco Niño on 01/06/22.
//

import UIKit

class RegistrarGastosVC: UIViewController {

    @IBOutlet weak var Tabla: UITableView!
    @IBOutlet weak var tfMonto: UITextField!
    
    
    let arrGastos = ["Gasto 1","Gasto 2","Gasto 3"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnAgregarGasto(_ sender: Any) {
        if let Monto = Double (tfMonto.text!){
            
            if Monto == 0 {
                alertaA()
                
            }else{
                
                AvisoRegistro()
            }
        }
        
        else{
            alertaLetras()
        }
    }
    
    
    
    func alertaLetras(){
        //Cuadro de dialogo
        let alerta = UIAlertController(title: "Error", message: "Error en el dato de entrada (No se admiten letras ni campos vacios)", preferredStyle: .alert)
        let aceptar = UIAlertAction(title: "Aceptar", style: .default)
        alerta.addAction(aceptar)
        present(alerta, animated: true)
    }
    func alertaA(){
        //Cuadro de dialogo
        let alerta = UIAlertController(title: "Alerta!!", message: "El registro sera de 0 pesos", preferredStyle: .alert)
        let aceptar = UIAlertAction(title: "Aceptar", style: .default)
        alerta.addAction(aceptar)
        present(alerta, animated: true)
    }
    func AvisoRegistro(){
        //Cuadro de dialogo
        let alerta = UIAlertController(title: "Aviso", message: "Registro Guardado!!", preferredStyle: .alert)
        let aceptar = UIAlertAction(title: "OK", style: .default)
        alerta.addAction(aceptar)
        present(alerta, animated: true)
    }
}
        
   
    



//Extension

extension RegistrarGastosVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrGastos.count //valores en el arreglo
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let renglon = indexPath.row
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaGasto", for: indexPath)
        
        celda.textLabel?.text = arrGastos[renglon]
        
        if renglon == 3 {
            celda.accessoryType = .disclosureIndicator
        }
        
        return celda
    }
    
}
