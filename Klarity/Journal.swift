//
//  Journal.swift
//  Klarity
//
//  Created by scholar on 8/15/23.
//

import SwiftUI

struct Journal: View {
    
    @State private var text = ""
    
    var body: some View {
        
        VStack {
            
            Text("Daily Journal")
                .font(.title)
                .fontWeight(.bold)
        
            TextField("Begin writing journal entry", text: $text)
                .padding()
                .border(Color.blue, width: 4)
        }
    }
    
    struct Journal_Previews: PreviewProvider {
        static var previews: some View {
            Journal()
        }
    }
}
