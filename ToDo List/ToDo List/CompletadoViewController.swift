//
//  CompletadoViewController.swift
//  ToDo List
//
//  Created by Salva Muñoz on 17/12/17.
//  Copyright © 2017 Salva Muñoz. All rights reserved.
//

import UIKit

class CompletadoViewController: UIViewController {
    
    var previusVC = ToDoTableViewController()
    var selectedToDo : ToDoCoreData? = nil //por defecto es = nil
    
    @IBOutlet weak var titleText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleText.text = selectedToDo?.name
    }
    
    @IBAction func completadoTapped(_ sender: Any) {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext{
            
            if let theToDo = selectedToDo{
                context.delete(theToDo)
                navigationController?.popViewController(animated: true)
            }
        }
        
        
        /*
         var index = 0
         for toDo in previusVC.toDos {
         
         if toDo.name == selectedToDo.name{
         
         previusVC.toDos.remove(at: index)
         previusVC.tableView.reloadData()
         navigationController?.popViewController(animated: true)
         break
         }
         index += 1
         }*/
    }
}
