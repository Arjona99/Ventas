//
//  ViewController_RegistroAdmin.swift
//  Ventas
//
//  Created by Sebastian Arjona on 1/20/18.
//  Copyright © 2018 Sebastian Arjona. All rights reserved.
//

import UIKit

class ViewController_RegistroAdmin: UIViewController {

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
        
        performSegue(withIdentifier: "toAdminLogIn", sender: self)
    }
    
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ViewController_AdminLogIn{
            destination.newUser = usuario.text
            destination.newName = nombre.text
            destination.newMail = correo.text
            destination.newPassword = contraseña.text
        }
        
    }
}
