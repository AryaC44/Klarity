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
        
            VStack {
                
                Text("Daily Journal")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                
                
                Text("How are you feeling today?")
                    .font(.title)
                
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
                
                TextField("Begin writing journal entry...", text: $text, axis: .vertical)
                    .padding()
                    .border(Color.blue, width: 4)
                
            }
            
            .padding()
            
            VStack {
                
                Text("Or if you are unsure of what to write, you can select a prompt below:")
                
                Button("Brain Dump") {
                    prompt = ("What did you do today?")
                }
                
                Button("Instant Cheer-Up") {
                    prompt = ("What is your favorite memory?")
                }
                
                Button("Letting Go Of Worries") {
                    prompt = ("What worries you, and how can it be seen as positive?")
                }
                
                Button("Self-Reflection") {
                    prompt = ("What makes you hopeful?")
                }
                
                Text(String(prompt))
            }
        }
            
            
        }
        
        struct Journal_Previews: PreviewProvider {
            static var previews: some View {
                Journal()
            }
        }


