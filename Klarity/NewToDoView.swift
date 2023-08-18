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
        
        ZStack {Color(hue: 0.858, saturation: 0.25, brightness: 0.957).ignoresSafeArea()
            VStack{
                VStack {
                    
                    Text("Task title:")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    TextField("Enter task description...", text: $title).padding()
                        .background(Color(.systemGroupedBackground))
                        .cornerRadius(15)
                        .padding()
                    
                    Toggle(isOn: $isImportant) {
                        Text("Is this task urgent?")
                            .font(.title2)
                            .fontWeight(.medium)
                        
                        Button(action: {
                            
                            self.addTask(title: self.title, isImportant: self.isImportant)
                            
                        }) {
                            Text("Add")
                                .font(.title)
                                .foregroundColor(.pink)
                        }
                        
                        
                    }.padding()
                    
                }.padding()
                
            }
        }
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


