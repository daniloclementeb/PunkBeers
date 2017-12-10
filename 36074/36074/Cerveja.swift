//
//  Cerveja.swift
//  36074
//
//  Created by macos on 05/12/17.
//  Copyright © 2017 danilo. All rights reserved.
//

import Foundation
class Cerveja {
    var id : Int
    var nome: String
    var tagLine: String
    var teorAlcoolico: Double?
    var escalaAmargor: Double?
    var descricao: String
    var urlImagem : String
    
    init(id : Int, nome : String, tagLine : String, teorAlcoolico : Double?, escalaAmargor : Double?, descricao : String, urlImagem : String) {
        self.id = id
        self.nome = nome
        self.tagLine = tagLine
        self.urlImagem = urlImagem
        
        if let teorAlcoolico = teorAlcoolico {
            self.teorAlcoolico = teorAlcoolico
        }
        
        if let escalaAmargor = escalaAmargor {
            self.escalaAmargor = escalaAmargor
        }
        
        self.descricao = descricao
    }
    
}
