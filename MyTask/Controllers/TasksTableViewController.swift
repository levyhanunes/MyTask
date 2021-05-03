//
//  TasksTableViewController.swift
//  MyTask
//
//  Created by user195088 on 5/1/21.
//

import UIKit


let category : Category = Category(name: "Lista de compras", color: .green)
let task : [Task] =  [
    
    Task(name: "Entregar documentos de estagio na BRQ :)", date: Date(), category: category)
    Task(name: "Essa e a minha lista de compras", date: Date(), category: category)
    Task(name: "Criar uma apresentacao para amanha", date: Date(), category: category)
]

class TasksTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
}
