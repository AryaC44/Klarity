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
        
        ZStack {Color(red: 0.936, green: 0.77, blue: 0.838).ignoresSafeArea()
            VStack {
                VStack {
                    HStack {
                        
                        Text("To Do List")
                            .font(.system(size: 40))
                            .fontWeight(.bold)
                        
                        Spacer()
                        
                        
                        Button(action: {
                            
                            self.showNewTask = true
                            
                            
                        }) {
                            Text("+")
                        }
                        
                    }.padding()
                    
                    Spacer()
                    
                    ZStack {Color(red: 0.936, green: 0.77, blue: 0.838).ignoresSafeArea()
                        List {
                            
                            ForEach (toDoItems) {
                                toDoItem in
                                
                                if toDoItem.isImportant == false {
                                    Text("" + toDoItem.title)
                                } else {
                                    Text("‼️" + toDoItem.title)
                                }
                            }
                            .listRowBackground(Color.pink)
                            
                            
                        }.background()
                    }
                        
                    }
                        
                        
                        if showNewTask {
                            NewToDoView(title: "", isImportant: false, toDoItems: $toDoItems)
                        }
                        
                    }
                }
            }
            }
        
        struct ToDoList_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
            }
        }
    
