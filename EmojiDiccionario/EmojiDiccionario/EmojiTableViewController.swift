//
//  EmojiTableViewController.swift
//  EmojiDiccionario
//
//  Created by Salva Muñoz on 27/10/17.
//  Copyright © 2017 Salva Muñoz. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {

    // : [Emoji] significa que va a ser un array de Emoji()
    // al igual qeu cuando haces let nombre:String es string
    // inicializado en un array vacio
    var emojis : [Emoji]  = []    // = ["☺️", "🙈", "📅"] //Array con emojis
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //inicializamos los emojis con la funcion que nos pasa un array de emojis
       emojis = createEmoji()
    }

    
    //Numero de filas que queremos que tenga la tabla
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        //El return debe devolver un numero que sera el numero de filas
        return emojis.count //Devolvermos el numero de "cosas" que tenga nuestro array
    }

    
    //Lo que queremos que lleve cada fila.
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "miCelda", for: indexPath)
        //withIdentifier debe usar el id que le pongas a la celda (donde el icono de periodico)
        
        //Aqui debemos "rellenar" la celda
        cell.textLabel?.text = emojis[indexPath.row].theEmoji //indexPath nos indica el indice de cada fila

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //Le pasamos el emoji selecionado la columna de emojis(array de emoji)
        let emojiSelecionado = emojis[indexPath.row]
        
        //se lo pasamos en el sender que ira al prepare for segue.
        performSegue(withIdentifier: "segue", sender: emojiSelecionado)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //Con esto "hacemos" visible el otro viewControler, y podemos acceder a sus variables y demas.
        let emojiDefVC = segue.destination as! EmojiDefinitionViewController
        
        emojiDefVC.emoji = sender as! String //se fuerza a ser un string
    }
    
    //Funcion para crear un array de emojis
    func createEmoji() -> [Emoji] {
        
        let smiley = Emoji()
        smiley.theEmoji = "☺️"
        smiley.def = "Una carita sonriente"
        smiley.birthYear = 2010
        smiley.category = "face"
        
        let monkey = Emoji()
        monkey.theEmoji = "🙈"
        monkey.birthYear = 2011
        monkey.def = "Un mono avergonzado"
        monkey.category = "face"
        
        //devolvemos un array de objetos Emoji()
        return [smiley, monkey]
    }

}
