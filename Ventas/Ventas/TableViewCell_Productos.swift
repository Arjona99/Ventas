//
//  TableViewCell_Productos.swift
//  Ventas
//
//  Created by Sebastian Arjona on 1/12/18.
//  Copyright © 2018 Sebastian Arjona. All rights reserved.
//

import UIKit

class TableViewCell_Productos: UITableViewCell {

    @IBOutlet weak var imgProducto: UIImageView!
    @IBOutlet weak var precio: UILabel!
    @IBOutlet weak var nombreProducto: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
