//
//  ToDoApp.swift
//  ToDo
//
//  Created by Artem Talko on 12.07.2023.
//

import SwiftUI



@main
struct ToDoApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
