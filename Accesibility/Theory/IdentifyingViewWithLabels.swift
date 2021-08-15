//
//  IdentifyingViewWithLabels.swift
//  Accesibility
//
//  Created by Sergio Sepulveda on 2021-08-15.
//

import SwiftUI

struct IdentifyingViewWithLabels: View {
    
    let pictures = [
        "ales-krivec-15949",
        "galina-n-189483",
        "kevin-horstmann-141705",
        "nicolas-tissot-335096"
    ]
    
    let labels = [
        "Tulips",
        "Frozen tree buds",
        "Sunflowers",
        "Fireworks",
    ]
    
    @State private var selectedPicture = Int.random(in: 0...3)
    
    var body: some View {
        Image(pictures[selectedPicture])
            .resizable()
            .scaledToFit()
            .accessibility(label: Text(labels[selectedPicture]))
            .accessibility(addTraits: .isButton)
            .accessibility(removeTraits: .isImage)
            .onTapGesture {
                self.selectedPicture = Int.random(in: 0...3)
            }
    }
}

struct IdentifyingViewWithLabels_Previews: PreviewProvider {
    static var previews: some View {
        IdentifyingViewWithLabels()
    }
}
