//
//  ViewController.swift
//  propina
//
//  Created by Maestro on 14/08/18.
//  Copyright © 2018 Maestro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
   
    
    
    @IBOutlet weak var lblPorcentaje: UILabel!
    
    @IBOutlet weak var sldPorcentajeDefinido: UISlider!
    
    @IBOutlet weak var txtCuenta: UITextField!
    
    @IBOutlet weak var lblPropina: UILabel!
    
    @IBOutlet weak var lblTotalPropina: UILabel!
    
    var porcentaje = 0
    var porcentajeInt = 0
    var cuenta = 0
    var propina = 0.0
    var total = 0.0
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sldPorcentajePropina(_ sender: Any) {
        
        let porcentajeInt =  Int(sldPorcentajeDefinido.value)
        
        let porcentaje = String(porcentajeInt)
        
        lblPorcentaje.text = porcentaje
        
        let cuenta = Int(txtCuenta.text!)
        
        propina = Double(cuenta!)*(Double(porcentajeInt)/100.0)
        
        lblPropina.text = String(propina)
        
        total = Double(propina)+Double(cuenta!)
        
        lblTotalPropina.text = String(total)
        
        
    }

}

