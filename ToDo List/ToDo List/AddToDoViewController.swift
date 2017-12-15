//
//  AddToDoViewController.swift
//  ToDo List
//
//  Created by Salva Muñoz on 14/12/17.
//  Copyright © 2017 Salva Muñoz. All rights reserved.
//

import UIKit



class AddToDoViewController: UIViewController {
    
    var previusVC = ToDoTableViewController() //hacemos referencia a la clase con la que queremos conectar
    
    @IBOutlet weak var tituloText: UITextField!
    @IBOutlet weak var importantSwich: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func addTapped(_ sender: Any) {
        let toDo = ToDo()
        toDo.name = tituloText.text!
        toDo.important = importantSwich.isOn
        
        previusVC.toDos.append(toDo) //añadimos el objeto que creamos justo encima al array de la otra clase toDos
        previusVC.tableView.reloadData() //le decimos a la clase que tiene previusVC que vuelva a leer los datos ya que hemos introducido nuevos pero tiene cargados los antiguos.
        navigationController?.popViewController(animated: true)//volvemos automaticamente a la pantalla anterior | el true es para que haga una vuelta atras con animacion
    }
    
}
