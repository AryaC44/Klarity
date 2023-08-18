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
            
            ZStack{Color(red: 0.727, green: 0.859, blue: 0.955).ignoresSafeArea()
                
                VStack {
                    
                    Text("Welcome to Klarity!")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.184, green: 0.481, blue: 0.877))
                        .multilineTextAlignment(.center)
                        
                    
                    Text("A Way to Aid Your Mental Health")
                        .fontWeight(.medium)
                        .font(.title2)
                        .foregroundColor(Color.blue)
                        .multilineTextAlignment(.center)
                        
                    
                    Image("brain")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                    
                    Text("Click any link below!")
                        .font(.headline)
                        .multilineTextAlignment(.center)
                    
                    VStack {
                                        
                        NavigationLink(destination: Journal()) {
                            Text("Journal 📔")
                                .font(.title)
                            .foregroundColor(Color(hue: 0.598, saturation: 0.93, brightness: 0.566)) }
                        
                        NavigationLink(destination: ToDoList()) {
                            Text("To-Do List 📌")
                                .font(.title)
                            .foregroundColor(Color(hue: 0.598, saturation: 0.93, brightness: 0.566)) }
                        
                        NavigationLink(destination: Affirmations()){
                            Text("Affirmations 💕")
                                .font(.title)
                            .foregroundColor(Color(hue: 0.598, saturation: 0.93, brightness: 0.566)) }
                        
                        NavigationLink(destination: Breathing()) {
                            Text("Breathing Exercises 🧘")
                                .font(.title)
                            .foregroundColor(Color(hue: 0.598, saturation: 0.93, brightness: 0.566)) }
                        
                        NavigationLink(destination: Help()) {
                            Text("Resources ☎️")
                                .font(.title)
                            .foregroundColor(Color(hue: 0.598, saturation: 0.93, brightness: 0.566)) }
                        
                        }
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
        
