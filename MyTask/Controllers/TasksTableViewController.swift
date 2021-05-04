//
//  TasksTableViewController.swift
//  MyTask
//
//  Created by user195088 on 5/1/21.
//

import UIKit


let category : Category = Category(name: "Lista de compras", color: .green)
let tasks : [Task] =  [
    
    Task(name: "Entregar documentos de estagio na BRQ :)", date: Date(), category: category),
    Task(name: "Essa e a minha lista de compras", date: Date(), category: category),
    Task(name: "Criar uma apresentacao para amanha", date: Date(), category: category)
]

class TasksTableViewController: UITableViewController {

    
    private var dateFormatter : DateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell", for: indexPath) as! TaskTableViewCell
        let task = tasks[indexPath.row]
        
        dateFormatter.dateFormat = "HH:mm"
        cell.hourLabel.text = dateFormatter.string(from: task.date)
        
        dateFormatter.dateFormat = "dd/MM/yyyy"
        cell.dateLabel.text = dateFormatter.string(from: task.date)
        
        
        cell.categotyNameLabel.text = task.category.name
        
        cell.categoryView.backgroundColor = task.category.color
        
        cell.taskDescriptionLabel.text = task.name
        
        return cell
    }
}
