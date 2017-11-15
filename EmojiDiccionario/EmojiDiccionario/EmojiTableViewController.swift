//
//  EmojiTableViewController.swift
//  EmojiDiccionario
//
//  Created by Salva Muñoz on 27/10/17.
//  Copyright © 2017 Salva Muñoz. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {

    
    var emojis = ["☺️", "🙈", "📅"] //Array con emojis
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
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
        cell.textLabel?.text = emojis[indexPath.row] //indexPath nos indica el indice de cada fila

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

}
