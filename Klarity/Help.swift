//
//  Help.swift
//  Klarity
//
//  Created by scholar on 8/17/23.
//

import SwiftUI

struct Help: View {
    var body: some View {
        
        VStack {
            
            Text("Click the links below to access mental health resources:")
                .font(.largeTitle)
                .fontWeight(.medium)
                .padding(40)
            
            Link("1. Mental Health Helplines (International)", destination: URL(string: "https://www.helpguide.org/find-help.htm")!)
            
            Link("2. CDC Resources", destination: URL(string: "https://www.cdc.gov/mentalhealth/tools-resources/index.htm")!)
            
            Link("3. National Institute of Mental Health", destination: URL(string: "https://www.nimh.nih.gov/health/find-help")!)
            
        
        }
    }
}

struct Help_Previews: PreviewProvider {
    static var previews: some View {
        Help()
    }
}
