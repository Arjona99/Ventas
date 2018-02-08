//
//  ViewController_Registro.swift
//  Ventas
//
//  Created by Sebastian Arjona on 11/30/17.
//  Copyright © 2017 Sebastian Arjona. All rights reserved.
//

import UIKit

class ViewController_Registro: UIViewController {

    @IBOutlet weak var nombre: UITextField!
    @IBOutlet weak var usuario: UITextField!
    @IBOutlet weak var correo: UITextField!
    @IBOutlet weak var contraseña: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func creatAccount(_ sender: UIButton) {
        performSegue(withIdentifier: "toMainPage", sender: self)
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ViewController_InicioSesion{
            destination.newUser = usuario.text
            destination.newName = nombre.text
            destination.newMail = correo.text
            destination.newPassword = contraseña.text
        }

}
}
