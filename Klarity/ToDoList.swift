//
//  ToDoList.swift
//  Klarity
//
//  Created by scholar on 8/15/23.
//

import SwiftUI

struct ToDoList: View {
    
    @State private var showNewTask = false
    @State var toDoItems: [ToDoItem] = []
    
    
    
    
    
    var body: some View {
        VStack {
            HStack {
                //Add a Text View containing the string "ToDoList" and modifiers here
                
                Text("To Do List")
                    .font(.system(size: 40))
                    .fontWeight(.black)
            
                //Add a Spacer here
                
                Spacer()
                
                //Add a Button here with Text("+") and delete any code in the action
                
                Button(action: {
                    
                    self.showNewTask = true
                    
                    
                }) {
                    Text("+")
                }
                
            }.padding()
            //Add a padding modifier here

            //A a Spacer here
            
            Spacer()
            
            List {
                
                ForEach (toDoItems) {
                    toDoItem in
                    
                    
                    
                    Text(toDoItem.title)
                    
                }
                
                
            }
            
        }
        
        
        if showNewTask {
            NewToDoView(title: "", isImportant: false, toDoItems: $toDoItems)
        }
        
        
        
        
    }
}

struct ToDoList_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


