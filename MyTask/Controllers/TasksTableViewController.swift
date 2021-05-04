//
//  TasksTableViewController.swift
//  MyTask
//
//  Created by user195088 on 5/1/21.
//

import UIKit


let work : Category = Category(name: "Trabalho", color: .green)
let buy : Category = Category(name: "Compras", color: .yellow)
let study : Category = Category(name: "Estudos", color: .blue)
let tasks : [Task] =  [
    
    Task(name: "Entregar documentos de estagio na BRQ :)", date: Date(), category: work),
    Task(name: "Comprar o Macbook Pro 2020", date: Date(), category: buy),
    Task(name: "Entregar o TCC da faculdade <3", date: Date(), category: study)
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
        
        cell.categoryTask.text = task.category.name
        
        cell.categoryView.backgroundColor = task.category.color
        
        cell.taskDescriptionLabel.text = task.name
        
        return cell
    }
}
