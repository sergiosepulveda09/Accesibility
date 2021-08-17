//
//  HidingAndGroupingAccesibilityData.swift
//  Accesibility
//
//  Created by Sergio Sepulveda on 2021-08-16.
//

import SwiftUI

struct HidingAndGroupingAccesibilityData: View {
    var body: some View {
        VStack {
            Text("Your score is:")
            Text("Font")
                .font(.title)
        }
//        .accessibilityElement(children: .combine)
        .accessibilityElement(children: .ignore)
        .accessibility(label: Text("Your scores is 1000"))
        
        
    }
}

struct HidingAndGroupingAccesibilityData_Previews: PreviewProvider {
    static var previews: some View {
        HidingAndGroupingAccesibilityData()
    }
}
