//
//  ContentView.swift
//  Klarity
//
//  Created by scholar on 8/15/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        NavigationStack {
            
            VStack {
                Text("Welcome to Klarity!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.blue)
                    .multilineTextAlignment(.center)
                
                VStack {
                    NavigationLink(destination: Journal()) {
                        Text("Journal") }
                        
                    NavigationLink(destination: ToDoList()) {
                        Text("To-Do List") }
                            
                    NavigationLink(destination: Affirmations()){
                        Text("Affirmations") }
                                
                    NavigationLink(destination: Breathing()) {
                        Text("Breathing Exercises") }
                                    
                                }
                            }
                        }
                    }
                    
                }
            
                struct ContentView_Previews: PreviewProvider {
                    static var previews: some View {
                        ContentView()
                    }
                }
        
