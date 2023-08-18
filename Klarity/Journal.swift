//
//  Journal.swift
//  Klarity
//
//  Created by scholar on 8/15/23.
//

import SwiftUI

struct Journal: View {
    
    @State private var text = ""
    @State private var answer = ""
    @State private var prompt = ""
    
    var body: some View {
        
        ZStack {Color(hue: 0.747, saturation: 0.476, brightness: 1.0).ignoresSafeArea()
            VStack {
                VStack {
                    
                    Text("Daily Journal 📔")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color(hue: 0.78, saturation: 1.0, brightness: 0.544))
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    Text("How are you feeling today?")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(hue: 0.641, saturation: 1.0, brightness: 0.442))
                        .multilineTextAlignment(.center)
                    
                    Button("Anxious") {
                        answer = "😬"
                    }
                    Button("Sad") {
                        answer = "😢"
                    }
                    Button("Angry") {
                        answer = "😡"
                    }
                    
                    Button("Happy") {
                        answer = "😁"
                    }
                    
                    Button("Scared") {
                        answer = "😰"
                    }
                    
                    
                    Text(String(answer))
                        .font(.system(size: 80))
                    
                    if answer == "😬" {
                        Text("I'm anxious because...")
                    } else if answer == "😢" {
                        Text("I'm sad because...")
                    } else if answer == "😡" {
                        Text("I'm angry because...")
                    } else if answer == "😁" {
                        Text("I'm happy because...")
                    } else if answer == "😰" {
                        Text("I'm scared because...")
                    }
                    
                }
                
                .padding()
                
                VStack {
                    
                    Text("Or if you are unsure of what to write, you can select a prompt below:")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(hue: 0.641, saturation: 1.0, brightness: 0.442))
                        
                    
                    Button("Brain Dump") {
                        prompt = ("What was the best part of your day?, What was the worst part of your day?")
                    }
                    
                    Button("Instant Cheer-Up") {
                        prompt = ("What is your favorite memory?, What are you grateful for?")
                    }
                    
                    Button("Letting Go Of Worries") {
                        prompt = ("What is worrying you?, How can you reframe this thought?")
                    }
                    
                    Button("Self-Reflection") {
                        prompt = ("What makes you hopeful?, What goals do you want to accomplish?")
                    }
                    
                    Text(String(prompt))
                    
                    TextField("Write about how you're feeling...", text: $text, axis: .vertical)
                        .padding()
                        .border(Color.blue, width: 5)
                }
                .padding()
            }
            
            
        }
    } }
        struct Journal_Previews: PreviewProvider {
            static var previews: some View {
                Journal()
            }
        }


