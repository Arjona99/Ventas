//
//  ViewController_AgregarProducto.swift
//  Ventas
//
//  Created by Sebastian Arjona on 1/12/18.
//  Copyright © 2018 Sebastian Arjona. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController_AgregarProducto: UIViewController {
    
    
    @IBOutlet weak var nombreNuevo: UITextField!
    @IBOutlet weak var precioNuevo: UITextField!
    @IBOutlet weak var URLimagen: UITextField!
   // @IBOutlet weak var descripcion: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    //addProduct()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    /*func addProduct(){
        
        let product = Producto()
        product.nombre = nombreNuevo.text!
        product.precio = precioNuevo.text!
        product.imagen = URLimagen.text!
        //product.descripcion = descripcion.text!
        
        let realm = try! Realm()
        
        try! realm.write{
            realm.add(product)
        }
        */
    
    @IBAction func addProduct(_ sender: UIButton) {
                performSegue(withIdentifier: "toAdminMain", sender: self)
        
        func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if let destination = segue.destination as? ViewController_Productos{
                destination.newProduct = nombreNuevo.text
                destination.newPrice = precioNuevo.text
                destination.newImage = URLimagen.text
                //destination.newDescription = descripcion.text
            }
        }
    }
        
    
            


}

