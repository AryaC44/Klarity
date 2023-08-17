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
            
            TextField("Begin writing your daily journal entry...", text: $text, axis: .vertical)
                .padding()
                .border(Color.blue, width: 4)
            
       
        }
        .padding()
        
        if answer == "😬" {
          Text("A")
        } else if answer == "😢" {
            Text("B")
        }
        
        
    
    }
}
struct Journal_Previews: PreviewProvider {
    static var previews: some View {
        Journal()
    }
}
