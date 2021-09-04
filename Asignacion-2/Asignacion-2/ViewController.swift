//
//  ViewController.swift
//  Asignacion-2
//
//  Created by David Encinas on 03/09/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtNombreVisitante: UITextField!
    @IBOutlet weak var sldTemperatura: UISlider!
    @IBOutlet weak var lblTemperatura: UILabel!
    @IBOutlet weak var btnCapturarVisitante: UIButton!
    @IBOutlet weak var imgResultado: UIImageView!
    @IBOutlet weak var lblResultado: UILabel!
    @IBOutlet weak var btnCapturarNuevo: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgResultado.isHidden = true
        lblResultado.isHidden = true
        btnCapturarNuevo.isHidden = true
        btnCapturarNuevo.isEnabled = true
        btnCapturarVisitante.isEnabled = true
        sldTemperatura.value = 36.0
    }

    @IBAction func doChangeTemperatura(_ sender: Any) {
        lblTemperatura.text = "\(String(format:"%.1f" , sldTemperatura.value))°C"
        if sldTemperatura.value >= 38.0{
            lblTemperatura.textColor = UIColor.red
        }
        else{
            lblTemperatura.textColor = UIColor.black
        }
    }
    @IBAction func doTapCapturarVisitante(_ sender: Any) {
        if sldTemperatura.value >= 38.0{
            imgResultado.image = UIImage(named: "no-check")
            lblResultado.text = "Ingreso NO autorizado para \(txtNombreVisitante.text!)"
        }
        else{
            imgResultado.image = UIImage(named: "check")
            lblResultado.text = "Ingreso autorizado para \(txtNombreVisitante.text!)"
        }
        txtNombreVisitante.isEnabled = false
        imgResultado.isHidden = false
        lblResultado.isHidden = false
        btnCapturarVisitante.isEnabled = false
        sldTemperatura.isEnabled = false
        sldTemperatura.tintColor = UIColor.darkGray
        btnCapturarNuevo.isHidden = false
    }
    
    @IBAction func doTapNuevo(_ sender: Any) {
        imgResultado.isHidden = true
        lblResultado.isHidden = true
        btnCapturarNuevo.isEnabled = true
        btnCapturarVisitante.isEnabled = true
        sldTemperatura.isEnabled = true
        txtNombreVisitante.text = ""
        sldTemperatura.tintColor = UIColor.systemBlue
        btnCapturarNuevo.isHidden = true
        txtNombreVisitante.isEnabled = true
        sldTemperatura.value = 36.0
    }
    
    
    
    
}

