//
//  ViewController.swift
//  propinas
//
//  Created by Alumno on 30/08/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtTotalCuenta: UITextField!
    
    @IBOutlet weak var sldPorcentajePropina: UISlider!
    
    @IBOutlet weak var lblPorcentajePropina: UILabel!
    
    @IBOutlet weak var lblCantidadPropina: UILabel!
    
    @IBOutlet weak var lblCantidadTotalMasPropina: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func doEditEndTotalCuenta(_ sender: Any) {
        
        
    }
    
    @IBAction func doChangePorcentajePropina(_ sender: Any) {
        lblPorcentajePropina.text = "\(String(Int(sldPorcentajePropina.value)))%"
        if txtTotalCuenta.text != nil && txtTotalCuenta.text != "" {
            let cuenta = Float(txtTotalCuenta.text!)!
            let porcentaje = Float(Int(sldPorcentajePropina.value))
            let propina = cuenta * (porcentaje/100.0)
            lblCantidadPropina.text = "$\(String(format: "%.2f", propina))"
            lblCantidadTotalMasPropina.text = "$\(String(format: "%2.f", cuenta + propina))"
            
        }
        
    
    }
}

