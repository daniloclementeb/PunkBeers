//
//  ListaTableViewController.swift
//  36074
//
//  Created by macos on 05/12/17.
//  Copyright © 2017 danilo. All rights reserved.
//

import UIKit
import Kingfisher
class ListaTableViewController: UITableViewController {

    var listaCerveja: [Cerveja] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        loadData()
    }
    
    func loadData() {
        RestBeer.getCervejas { (listaCervejas) in
            if let cervejas = listaCervejas {
                self.listaCerveja = cervejas
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listaCerveja.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CervejaTableViewCell
        
        let cerveja = listaCerveja[indexPath.row]
        
        cell.lblNome.text = cerveja.nome
        
        if let teorAlcoolico = cerveja.teorAlcoolico {
            cell.lblTeor.text = "Teor Alcóolico: \(teorAlcoolico)"
        }
        
        //let url = URL(string: cerveja.urlImagem)
        //cell.ivFoto.image = try! UIImage(data: Data(contentsOf: url!))
        let url = URL(string: cerveja.urlImagem)
        cell.ivFoto.kf.setImage(with: ImageResource(downloadURL: url!, cacheKey: cerveja.nome))
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detalhes" {
            let vc = segue.destination as! DetalhesViewController
            vc.cerveja = listaCerveja[tableView.indexPathForSelectedRow!.row]
        }
    }
    
}
