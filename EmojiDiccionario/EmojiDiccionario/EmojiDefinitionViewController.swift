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
    @IBOutlet weak var EmojiLabel: UILabel! //Dibujo centro
    var emoji = Emoji() //este contenido *venia* desde emojiTVC
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        EmojiLabel.text = emoji.theEmoji
        emojiDefLabel.text = emoji.def
        textoAnio.text = "Año de nacimiento: \(emoji.birthYear)"
        textoCategoria.text = emoji.category

    }

   
}
