//  MyText.swift
//  WarmUp

import SwiftUI

struct MyText: View {
    var textTitle: String
    var textFont: Font
    
    var body: some View {
        Text(textTitle)
            .font(textFont)
            .bold()
            .padding()
    }
}

#Preview {
    MyText(textTitle: "Text Element n", textFont: .body)
}
