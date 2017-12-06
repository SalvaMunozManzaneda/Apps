//
//  EmojiDefinitionViewController.swift
//  EmojiDiccionario
//
//  Created by Salva Muñoz on 15/11/17.
//  Copyright © 2017 Salva Muñoz. All rights reserved.
//

import UIKit

class EmojiDefinitionViewController: UIViewController {

    @IBOutlet weak var textoCategoria: UILabel!
    @IBOutlet weak var textoAnio: UILabel!
    @IBOutlet weak var emojiDefLabel: UILabel!
    @IBOutlet weak var EmojiLabel: UILabel!
    var emoji = "" //este contenido viene desde emojiTVC
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        EmojiLabel.text = emoji
        
        if emoji == "☺️" {
           emojiDefLabel.text = "Una carita Feliz"
        }
        if emoji == "🙈"{
            emojiDefLabel.text = "Un Monete tapandose la carita"
        }
        if emoji == "📅"{
            emojiDefLabel.text = "Mi aniversario con Eva"
        }

    }

   
}
