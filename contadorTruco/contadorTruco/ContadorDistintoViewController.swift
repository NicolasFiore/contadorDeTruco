//
//  contadorDistintoViewController.swift
//  contadorTruco
//
//  Created by Nicolás Fiore on 13/09/2023.
//

import UIKit

class ContadorDistintoViewController: UIViewController {
    @IBOutlet var labelNosotros: UILabel!
    @IBOutlet var labelEllos: UILabel!
    @IBOutlet var stepperNosotros: UIStepper!
    @IBOutlet var stepperEllos: UIStepper!
    @IBOutlet var botonNosotros: UIButton!
    @IBOutlet var botonEllos: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Contador distinto"
        
        //labels
        labelNosotros.text = "0"
        labelEllos.text = "0"
        
        //stepper
        stepperNosotros.minimumValue = 0
        stepperNosotros.maximumValue = 25
        stepperNosotros.value = 0
        stepperEllos.minimumValue = 0
        stepperEllos.maximumValue = 25
        stepperEllos.value = 0
        
        //Botones
        botonNosotros.setTitle("Reiniciar a 0", for: .normal)
        botonEllos.setTitle("Reiniciar a 0", for: .normal)
    }
    
    @IBAction func stepperNosotrosAction(_ sender: Any) {
        labelNosotros.text = String(Int(stepperNosotros.value))
    }
    
    @IBAction func stepperEllosAction(_ sender: Any) {
        labelEllos.text = String(Int(stepperEllos.value))
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
