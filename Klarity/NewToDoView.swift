//
//  NewToDoView.swift
//  Klarity
//
//  Created by scholar on 8/17/23.
//

import SwiftUI

struct NewToDoView: View {
    
    @State var title: String
    @State var isImportant: Bool
    @Binding var toDoItems: [ToDoItem]
    
    
    var body: some View {
        
        
        VStack {
            
            Text("Task title:")
            
            TextField("Enter the task description...", text: $title).padding()
                .background(Color(.systemGroupedBackground))
                    .cornerRadius(15)
                    .padding()
            
            Toggle(isOn: $isImportant) {
                Text("Is this task important?")
                
                
                
                Button(action: {
                    
                    self.addTask(title: self.title, isImportant: self.isImportant)
                    
                    
                }) {
                    Text("Add")
                }
                
            
            }.padding()
            
        }.padding()

    }
    
    
    private func addTask(title: String, isImportant: Bool = false) {
        
        let task = ToDoItem(title: title, isImportant: isImportant)
        toDoItems.append(task)
    }
    
    
    
}

struct NewToDoView_Previews: PreviewProvider {
    static var previews: some View {
        
        
        NewToDoView(title: "", isImportant: false, toDoItems: .constant([]))
        
    }
    
    

}


