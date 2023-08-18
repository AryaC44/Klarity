//
//  Help.swift
//  Klarity
//
//  Created by scholar on 8/17/23.
//

import SwiftUI

struct Help: View {
    var body: some View {
        
        ZStack {Color(hue: 0.603, saturation: 0.763, brightness: 0.955).ignoresSafeArea()
            VStack {
                VStack {
                
                    Text("Click the links below to access mental health resources: ☎️")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding(40)
                    
                    Link("1. Mental Health Helplines (International 🌏)", destination: URL(string: "https://www.helpguide.org/find-help.htm")!)
                        .font(.title)
                        .tint(.white)
                        .padding(10)
                    
                    Link("2. CDC Resources", destination: URL(string: "https://www.cdc.gov/mentalhealth/tools-resources/index.htm")!)
                        .font(.title)
                        .tint(.white)
                        .padding(10)
                    
                    Link("3. National Institute of Mental Health", destination: URL(string: "https://www.nimh.nih.gov/health/find-help")!)
                        .font(.title)
                        .tint(.white)
                        .padding(10)
                    
                    Image("ask")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        
                    
                }
                
            }
            
        }
    }
}

struct Help_Previews: PreviewProvider {
    static var previews: some View {
        Help()
    }
}
