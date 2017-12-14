//
//  ToDoTableViewController.swift
//  ToDo List
//
//  Created by Salva Muñoz on 13/12/17.
//  Copyright © 2017 Salva Muñoz. All rights reserved.
//

import UIKit

var toDos : [ToDo] = []

class ToDoTableViewController: UITableViewController {

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
        
        let toDo = toDos[indexPath.row] //aqui recogemos uno a uno los toDos, recoge solo un objeto por "vuelta"

        if toDo.important {
            cell.textLabel?.text = "❗️" + toDo.name
        }else{
            cell.textLabel?.text = toDo.name
        }

        return cell
    }

}
