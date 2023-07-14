//
//  ItemModel.swift
//  ToDo
//
//  Created by Artem Talko on 12.07.2023.
//

import Foundation

struct ItemModel: Identifiable, Codable {
    let title: String
    let isComleted: Bool
    let id: String
    
    
    init(Id: String = UUID().uuidString, Title: String, isCompleted: Bool){
        self.id = Id
        self.title = Title
        self.isComleted = isCompleted
    }
    
    func updateCompleted() -> ItemModel {
        return ItemModel(Id: id, Title: title, isCompleted: !isComleted)
    }
}
