//
//  Task.swift
//  MyTask
//
//  Created by user195088 on 5/2/21.
//
import UIKit
import Foundation

struct Task {
    var id = UUID()
    var name : String = ""
    var date : Date = Date()
    var category : Category = Category(name: "Marketing", color: .black)
    
    
}
