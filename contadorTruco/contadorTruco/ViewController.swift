//
//  ViewController.swift
//  contadorTruco
//
//  Created by Nicolás Fiore on 12/09/2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var stepperNosotros: UIStepper!
    @IBOutlet var stepperEllos: UIStepper!
    @IBOutlet var labelNosotros: UILabel!
    @IBOutlet var labelEllos: UILabel!
    @IBOutlet var botonNosotros: UIButton!
    @IBOutlet var botonEllos: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Anotador de truco"
        
        //labels
        labelNosotros.text = "0"
        labelEllos.text = "0"
        
        //steppers
        stepperNosotros.minimumValue = 0
        stepperNosotros.maximumValue = 25
        stepperNosotros.value = 0
        stepperEllos.minimumValue = 0
        stepperEllos.value = 0
        stepperEllos.maximumValue = 25
        
        //botones
        botonNosotros.setTitle("Reiniciar a 0", for: .normal)
        botonEllos.setTitle("Reiniciar a 0", for: .normal)
    }
    @IBAction func stepperNosotrosAction(_ sender: Any) {
        let value = Int(stepperNosotros.value)
        labelNosotros.text = "\(value)"
    }
    @IBAction func stepperEllosAction(_ sender: Any) {
        let value = Int(stepperEllos.value)
        labelEllos.text = "\(value)"
    }
    @IBAction func botonNosotrosAction(_ sender: Any) {
        stepperNosotros.value = 0
        labelNosotros.text = "0"
    }
    @IBAction func botonEllosAction(_ sender: Any) {
        stepperEllos.value = 0
        labelEllos.text = "0"
    }
    

}

