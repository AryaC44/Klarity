//
//  Breathing.swift
//  Klarity
//
//  Created by scholar on 8/15/23.
//

import SwiftUI

struct Breathing: View {
    
    var body: some View {
        
        VStack{
            
            Text("Breathing Exercises")
                .font(.largeTitle)
            
            Text("Choose duration of exercise below:")
            
            Button("1 Minute") {
                Link(<#LocalizedStringKey#>, destination: URL(string: "github.com/AryaC44/Klarity/settings/access?guidance_task=")!)
                   
                }
            }
            Button("5 Minutes") {
                
            }
            Button("10 Minutes") {
                
            }
            

        }
    }
    
    struct Breathing_Previews: PreviewProvider {
        static var previews: some View {
            Breathing()
        }
    }
}
