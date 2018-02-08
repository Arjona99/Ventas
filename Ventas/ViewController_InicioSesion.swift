//
//  ViewController_InicioSesion.swift
//  Ventas
//
//  Created by Sebastian Arjona on 12/7/17.
//  Copyright © 2017 Sebastian Arjona. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController_InicioSesion: UIViewController {

        @IBOutlet weak var usuario: UITextField!
        @IBOutlet weak var contraseña: UITextField!
        @IBOutlet weak var wrongLabel: UILabel!
    
        var newName:String?
        var newUser:String?
        var newMail:String?
        var newPassword:String?
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            if let aux = newUser{
                usuario.text = aux
            }
            if let aux = newPassword{
                contraseña.text = aux
            }
            
            addClient()
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        
        func addClient(){
            
            let user = Client()
            user.name = newName!
            user.userName = newUser!
            user.mail = newMail!
            user.password = newPassword!
            
            let realm = try! Realm()
            
            try! realm.write{
                realm.add(user)
            }
            
        }
        
        @IBAction func signIn(_ sender: UIButton) {
            
            let realm = try! Realm()
            
            let allUsers = realm.objects(Client.self)
            
            for user in allUsers{
                if usuario.text == user.userName && contraseña.text == user.password{
                    
                    performSegue(withIdentifier: "toProductList", sender: self)
                }else{
                    wrongLabel.isHidden = false
                }
            }
        }
}


