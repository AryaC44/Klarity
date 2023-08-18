//
//  Breathing.swift
//  Klarity
//
//  Created by scholar on 8/15/23.
//

import SwiftUI

struct Breathing: View {
    
    var body: some View {
        
        ZStack {Color(hue: 0.516, saturation: 0.268, brightness: 0.991).ignoresSafeArea()
            VStack {
                VStack{
                    
                    Text("Breathing Exercises 🧘")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(40)
                    
                    Text("These exercises will help you feel more relaxed and relieve any worries or stress that you have!")
                        .font(.title2)
                        .foregroundColor(Color(hue: 0.572, saturation: 1.0, brightness: 0.669))
                        .multilineTextAlignment(.center)
                        .padding(30)
                    
                    Text("Choose duration of exercise below:")
                        .font(.title2)
                        .padding(20)
                    
                    Link("1 Minute", destination: URL(string: "https://www.youtube.com/watch?v=u9Q8D6n-3qw")!)
                        .font(.title)
                    
                    Link("5 Minutes", destination: URL(string: "https://www.youtube.com/watch?v=IYaCnVKhZv8")!)
                        .font(.title)
                    
                    Link("10 Minutes", destination: URL(string: "https://www.youtube.com/watch?v=aXItOY0sLRY")!)
                        .font(.title)
                    
                    Image("Breathing")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                    
                }
                
            }
        }
    }
}

    struct Breathing_Previews: PreviewProvider {
        static var previews: some View {
            Breathing()
        }
    }

