//
//  File.swift
//  Ventas
//
//  Created by Sebastian Arjona on 12/7/17.
//  Copyright © 2017 Sebastian Arjona. All rights reserved.
//

import Foundation
import RealmSwift

class Admin : Object{
    @objc dynamic var name = ""
    @objc dynamic var userName = ""
    @objc dynamic var mail = ""
    @objc dynamic var password = ""
}

class Client : Object{
    @objc dynamic var name = ""
    @objc dynamic var userName = ""
    @objc dynamic var mail = ""
    @objc dynamic var password = ""
}

class Producto : Object {
    @objc dynamic var imagen = ""
    @objc dynamic var nombre = ""
    @objc dynamic var precio = ""
//@objc dynamic var descripcion = ""
}
