//
//  ToDoTableViewController.swift
//  ToDo List
//
//  Created by Salva Muñoz on 13/12/17.
//  Copyright © 2017 Salva Muñoz. All rights reserved.
//

import UIKit



class ToDoTableViewController: UITableViewController {

    var toDos : [ToDo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        toDos = toDo()

    }
    
    func toDo() -> [ToDo] {
        
        let eggs = ToDo()
        eggs.name = "Comprar huevos"
        eggs.important = true
        
        let cheese = ToDo()
        cheese.name = "Comer queso"
        
        let dog = ToDo()
        dog.name = "Pasear al perro"
        
        return [eggs, cheese, dog]
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return toDos.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        let toDo = toDos[indexPath.row] //recogemos uno a uno los toDos, recoge solo un objeto por "vuelta"

        if toDo.important {
            cell.textLabel?.text = "❗️" + toDo.name
        }else{
            cell.textLabel?.text = toDo.name
        }

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let toDo = toDos[indexPath.row] //recogemos la fila selecionada, y le pasamos a toDo el objeto de toDos
        performSegue(withIdentifier: "moveToComplete", sender: toDo) //pasamos por el segue "moveToComplete" el toDo selecionado.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //para conectar ToDoTableVC con AddToDoVC y enviar los datos
        if let addToDoVC = segue.destination as? AddToDoViewController{
            addToDoVC.previusVC = self //pasamos toda la clase en la que estamos a AddToDoVC
        }
        if let completeVC = segue.destination as? CompletadoViewController{//nos aseguramos que va hacia completadoViewController
            
            if let toDo = sender as? ToDo{//aseguramos que pasamos un ToDo()
                completeVC.selectedToDo = toDo
            }
        }
    }

}
