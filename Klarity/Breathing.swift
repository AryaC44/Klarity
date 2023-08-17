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
                    .fontWeight(.black)
                
                
                Text("Choose duration of exercise below:")
                
                Link("1 Minute", destination: URL(string: "https://www.youtube.com/watch?v=u9Q8D6n-3qw")!)
                
                Link("5 Minute", destination: URL(string: "")!)
                
                Link("10 Minute", destination: URL(string: "")!)
                
            }
           
            
            
        }
    }
    
    struct Breathing_Previews: PreviewProvider {
        static var previews: some View {
            Breathing()
        }
    }

