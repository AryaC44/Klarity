//
//  Help.swift
//  Klarity
//
//  Created by scholar on 8/17/23.
//

import SwiftUI

struct Help: View {
    var body: some View {
        
        ZStack {Color(red: 0.998, green: 0.964, blue: 0.904).ignoresSafeArea()
            VStack {
                VStack {
                    
                    Text("Click the links below to access mental health resources:")
                        .font(.largeTitle)
                        .fontWeight(.medium)
                        .multilineTextAlignment(.center)
                        .padding(40)
                    
                    Link("1. Mental Health Helplines (International)", destination: URL(string: "https://www.helpguide.org/find-help.htm")!)
                        .padding(10)
                    
                    Link("2. CDC Resources", destination: URL(string: "https://www.cdc.gov/mentalhealth/tools-resources/index.htm")!)
                        .padding(10)
                    
                    Link("3. National Institute of Mental Health", destination: URL(string: "https://www.nimh.nih.gov/health/find-help")!)
                        .padding(10)
                    
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
