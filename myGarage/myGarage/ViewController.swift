//
//  ViewController.swift
//  myGarage
//
//  Created by Marcos Esteve on 22/1/18.
//  Copyright © 2018 Marcos Esteve. All rights reserved.
//

import UIKit
import Foundation


class ViewController: UIViewController {
    @IBOutlet var imagen: UIImageView!
    @IBOutlet var nombre: UILabel!
    @IBOutlet var marca: UILabel!
    @IBOutlet var caballos: UILabel!
    var i = 0
    var  coches : [Car] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        coches.append(Car(cv: 1000, nombre: "Coche1", marca: "Marca1", imagen: #imageLiteral(resourceName: "ferrari")))
        coches.append(Car(cv: 100, nombre: "Coche12", marca: "Marca12", imagen: #imageLiteral(resourceName: "citroen")))
        coches.append(Car(cv: 10, nombre: "Coche13", marca: "Marca13", imagen: #imageLiteral(resourceName: "fiat")))
        actview(coche: coches[0])
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func cambiarClicked(_ sender: UIButton) {
        UIView.animate(withDuration: 1.5, delay: 0.5, options: .curveEaseIn, animations: {
            if self.i < self.coches.count-1{
                self.i+=1
            }else{
                self.i = 0
            }
            self.actview(coche: self.coches[self.i])
        }, completion: nil)
        
        
        
    }
    func actview(coche : Car) -> Void {
        if let img : UIImage = coche.imagen {
            imagen.image = img
        }else{
            imagen.image = nil
        }
        self.view.backgroundColor = getRandomColor()
        nombre.text = coche.nombre!
        marca.text = "marca: \(coche.marca!)"
        caballos.text = "Tiene \(coche.cv!) caballos"
    }
    func getRandomColor() -> UIColor{
        //Generate between 0 to 1
        let red:CGFloat = CGFloat(drand48())
        let green:CGFloat = CGFloat(drand48())
        let blue:CGFloat = CGFloat(drand48())
        
        return UIColor(red:red, green: green, blue: blue, alpha: 1.0)
    }
}

