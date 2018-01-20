//
//  ViewController.swift
//  HelloWorld
//
//  Created by Marcos Esteve on 20/1/18.
//  Copyright © 2018 Marcos Esteve. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textField: UITextField!
    @IBOutlet var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = ""
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func ButtonPress(_ sender: UIButton) {
        var texto = textField.text!
        label.text = "HOLA \(texto) MOLA".uppercased()
        print("Boton pulsado!")
        let alerta : UIAlertController = UIAlertController(title: "Hola ", message: "Bienvenido", preferredStyle: .alert)
        let accion : UIAlertAction = UIAlertAction(title: "OKEY", style: .cancel, handler: nil)
        let muerte : UIAlertAction = UIAlertAction(title: "muerte", style: .destructive, handler: nil)
        alerta.addAction(accion)
        alerta.addAction(muerte)
        present(alerta, animated: true, completion: nil)
    }
    

}

