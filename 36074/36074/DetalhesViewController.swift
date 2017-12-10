//
//  DetalhesViewController.swift
//  36074
//
//  Created by macos on 09/12/17.
//  Copyright © 2017 danilo. All rights reserved.
//

import UIKit
import Kingfisher

class DetalhesViewController: UIViewController {
    
    var cerveja: Cerveja!
    
    @IBOutlet weak var lblNome: UILabel!
    @IBOutlet weak var lblTagLine: UILabel!
    @IBOutlet weak var lblTeor: UILabel!
    @IBOutlet weak var lblAmargor: UILabel!
    @IBOutlet weak var ivImage: UIImageView!
    @IBOutlet weak var lblDescricao: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if cerveja != nil {
            lblNome.text = cerveja.nome
            lblTagLine.text = cerveja.tagLine
            lblDescricao.text = cerveja.descricao
            if let teorAlcoolico = cerveja.teorAlcoolico {
                lblTeor.text = "\(teorAlcoolico)"
            }
            else {
                lblTeor.text = ""
            }
            
            if let escalaAmargor = cerveja.escalaAmargor {
                lblAmargor.text = "\(escalaAmargor)"
            }
            else {
                lblAmargor.text = ""
            }
            
            //let url = URL(string: cerveja.urlImagem)
            //ivImage.image = try! UIImage(data: Data(contentsOf: url!))
            let url = URL(string: cerveja.urlImagem)
            ivImage.kf.setImage(with: ImageResource(downloadURL: url!, cacheKey: cerveja.nome))
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
