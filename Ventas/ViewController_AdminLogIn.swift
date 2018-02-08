//
//  ViewController_AdminLogIn.swift
//  Ventas
//
//  Created by Sebastian Arjona on 11/30/17.
//  Copyright © 2017 Sebastian Arjona. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController_AdminLogIn: UIViewController {

    @IBOutlet weak var user: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var wrongLabel: UILabel!
    
    var newName:String?
    var newUser:String?
    var newMail:String?
    var newPassword:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let aux = newUser{
            user.text = aux
        }
        if let aux = newPassword{
            password.text = aux
        }
        
        addAdmin()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func addAdmin(){
        
        let adm = Admin()
        adm.name = newName!
        adm.userName = newUser!
        adm.mail = newMail!
        adm.password = newPassword!
        
        let realm = try! Realm()
        
        try! realm.write{
            realm.add(adm)
        }
        
    }
    
   
    @IBAction func signIn(_ sender: UIButton) {
        
        let realm = try! Realm()
        
        let allAdmins = realm.objects(Admin.self)
        
        for adm in allAdmins{
            if user.text == adm.userName && password.text == adm.password{
                performSegue(withIdentifier: "toAdminP2", sender: self)
            }else{
                wrongLabel.isHidden = false
            }
        }
        
    }
    
}
