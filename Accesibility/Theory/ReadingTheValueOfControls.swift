//
//  ReadingTheValueOfControls.swift
//  Accesibility
//
//  Created by Sergio Sepulveda on 2021-08-17.
//

import SwiftUI

struct ReadingTheValueOfControls: View {
    
//    @State private var estimate: Double = 25.0
    @State private var rating = 3
    var body: some View {
        
        Stepper("Please rate our service: \(rating)", value: $rating, in: 1...5)
            .accessibility(value: Text("\(rating) out of 5"))
//        Slider(value: $estimate, in: 0...50)
//            .padding()
//            .accessibility(value: Text("\(Int(estimate))"))
    }
}

struct ReadingTheValueOfControls_Previews: PreviewProvider {
    static var previews: some View {
        ReadingTheValueOfControls()
    }
}
