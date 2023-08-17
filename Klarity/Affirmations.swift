//
//  Affirmations.swift
//  Klarity
//
//  Created by scholar on 8/15/23.
//

import SwiftUI

struct Affirmations: View {
    
    @State private var factText = "Click to generate random affirmation"
    
    var body: some View {
        
        Text("Affirmations")
            .font(.largeTitle)
            .fontWeight(.heavy)
            .padding(10)
        
        Text("If you are feeling stressed, sad, or anxious about anything, affirmations are a great way to ease your mind and reassure yourself that everything will be okay ☺️")
            .font(.title)
            .fontWeight(.bold)
            .padding(30)
        
        let randomFacts = ["You are enough and you have enough", "You are in the right place, at the right time, doing the right thing", "You can do hard things", "You are worthy of what you desire", "You are resilient in the face of challenges", "You should be proud of yourself and your achievements", "You will accomplish everything you need to do today", "You do your best, and your best is good enough", "You should prioritize your well-being", "You can overcome your fears by getting out of your comfort zone", "You are love, and you are loved", "You should trust your inner guidance and follow it", "You should accept your emotions and let them move through you", "You should take care of yourself, mind, body, and spirit", "You can trust yourself to make the right decisions", "You should use your voice to speak up for yourself and others", "You can trust that your heading in the right direction"]
        
        VStack() {
            Text(factText)
            
            Button("Click") {
                let fact = randomFacts.randomElement()!
                factText = fact
            }.buttonStyle(.borderedProminent)
        }
    }
    
    struct Affirmations_Previews: PreviewProvider {
        static var previews: some View {
            Affirmations()
        }
    }
    
}
