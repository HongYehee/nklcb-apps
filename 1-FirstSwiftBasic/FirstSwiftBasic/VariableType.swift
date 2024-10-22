//  VariableType.swift
//  FirstSwiftBasic

import SwiftUI

struct VariableType: View {
    
    var name: String = "Ray"
    var age: Int = 24
    var height: Float = 162.3
    var weight: Double = 49.9
    var havePet: Bool = false
    
    var body: some View {
        VStack {
            Text("\(name)")
            Text("\(age)")
            Text("\(height)")
            Text("\(weight)")
            Text("\(havePet.description)")
        }
    }
}

#Preview {
    VariableType()
}
