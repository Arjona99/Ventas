//
//  ViewController_Productos.swift
//  Ventas
//
//  Created by Sebastian Arjona on 1/12/18.
//  Copyright © 2018 Sebastian Arjona. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController_Productos: UIViewController ,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var newProduct:String?
    var newPrice:String?
    var newImage:String?
    //var newDescription:String?
    
    var productos:[String]?
    var precios:[String]?
    var imagenes:[String]?
    //var descripciones:[String]?

    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        //let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(tapButton))
        //self.navigationItem.rightBarButtonItem = addButton
   
        addProduct()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productos!.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let realm = try! Realm()
        
        let allProducts = realm.objects(Producto.self)
        
        for pro in allProducts{
            productos?.append(pro.nombre)
            precios?.append(pro.precio)
            imagenes?.append(pro.imagen)
        //descripciones?.append(pro.descripcion)
        }
        
        tableView.reloadData()
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell_Productos
    
        let item = allProducts[indexPath.row]
        
        cell.nombreProducto!.text = item.nombre
        cell.precio!.text = item.precio
  
        return cell
    }

    
    
    func addProduct(){
        
        if newProduct != nil || newPrice != nil || newImage != nil{
        
        let product = Producto()
        product.nombre = newProduct!
        product.precio = newPrice!
        product.imagen = newImage!
        //product.descripcion = descripcion.text!
        
        let realm = try! Realm()
        
        try! realm.write{
            realm.add(product)
        }
        
        func tapButton(){
            performSegue(withIdentifier: "toAddProduct", sender: self)
        }
        }
    }
}
