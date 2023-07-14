//
//  ListRowView.swift
//  ToDo
//
//  Created by Artem Talko on 14.07.2023.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isComleted ?
                  "checkmark.circle": "circle")
            .foregroundColor(item.isComleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var item1 = ItemModel(Title: "Item 1", isCompleted: true)
    static var item2 = ItemModel(Title: "Item 1", isCompleted: false)
    static var previews: some View {
        Group{
            ListRowView(item: item1)
            ListRowView(item: item2)
        }.previewLayout(.sizeThatFits)
    }
}
