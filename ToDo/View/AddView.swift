//
//  AddView.swift
//  ToDo
//
//  Created by Artem Talko on 13.07.2023.
//

import SwiftUI



struct AddView: View {
    
    //dismiss a view
    @Environment(\.presentationMode) var presentationMode
    
    @State var textFieldText: String = ""
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    @EnvironmentObject var listviewmodel: ListViewModel
    
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("type smth here..", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color.blue.opacity(0.2))
                    .cornerRadius(20)
                Button(action: saveButtonTaped) {
                    Text("add")
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 50)
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(30)
                }
            }.padding(16)
        }
        .navigationTitle("add items")
        .alert(isPresented: $showAlert, content: getAlert)
    }
    
    func saveButtonTaped() {
        if textIsValid(){
            listviewmodel.addItem(title: textFieldText)
            presentationMode.wrappedValue.dismiss()
        }
    }
    
    func textIsValid() -> Bool {
        if textFieldText.count < 3 {
            alertTitle = "your todo item shound contain at least 3 characters"
            showAlert.toggle()
            return false
        }

        return true

    }
    
    func getAlert() -> Alert {
        return Alert(title: Text(alertTitle))
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView()
    }
}
