//
//  CervejaTableViewCell.swift
//  36074
//
//  Created by macos on 05/12/17.
//  Copyright © 2017 danilo. All rights reserved.
//

import UIKit

class CervejaTableViewCell: UITableViewCell {

    @IBOutlet weak var ivFoto: UIImageView!
    
    @IBOutlet weak var lblNome: UILabel!
    
    @IBOutlet weak var lblTeor: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
