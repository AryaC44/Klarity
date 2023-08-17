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
                        .padding(40)
                    
                    Text("These exercises will help you feel more relaxed and relieve any worries or stress that you have 🧘")
                        .padding(30)
                    
                    Text("Choose duration of exercise below:")
                        .padding(20)
                    
                    Link("1 Minute", destination: URL(string: "https://www.youtube.com/watch?v=u9Q8D6n-3qw")!)
                    
                    Link("5 Minutes", destination: URL(string: "https://www.youtube.com/watch?v=IYaCnVKhZv8")!)
                    
                    Link("10 Minutes", destination: URL(string: "https://www.youtube.com/watch?v=aXItOY0sLRY")!)
                    
                    Image("Breathing")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                    
                }
                
        }
    }
    
    struct Breathing_Previews: PreviewProvider {
        static var previews: some View {
            Breathing()
        }
    }

