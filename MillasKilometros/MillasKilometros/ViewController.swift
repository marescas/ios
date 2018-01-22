//
//  ViewController.swift
//  MillasKilometros
//
//  Created by Marcos Esteve on 20/1/18.
//  Copyright © 2018 Marcos Esteve. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var numberTextField: UITextField!
    @IBOutlet var selector: UISegmentedControl!
    @IBOutlet var resultLabel: UILabel!
    let unidad = 1.609
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = ""
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func convertClicked(_ sender: UIButton) {
        if let val = numberTextField.text, let valn = Double(val){
        
            if selector.selectedSegmentIndex==0 {
                let resultado = Double(valn) * unidad
                resultLabel.text = String(resultado)
            }else{
                let resultado = Double(valn) / unidad
                resultLabel.text = String(resultado)
            }
        }else{
            resultLabel.text = "Escribe un valor!"
        }
    

    }
    
}

