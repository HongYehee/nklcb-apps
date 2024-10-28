//  Layout.swift
//  WarmUp

import SwiftUI

struct Layout: View {
    var body: some View {
        VStack {
            Image(systemName: "pencil")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .padding()
            
            MyText(textTitle: "Text Element 1", textFont: .headline)
            MyText(textTitle: "Text Element 2", textFont: .subheadline)
            MyText(textTitle: "Text Element 3", textFont: .body)
            
            HStack {
                MyButton(buttonTitle: "Button 1", buttonColor: .blue)
                MyButton(buttonTitle: "Button 2", buttonColor: .cyan)
            }
            
            Button {
                
            } label: {
                VStack {
                    Image(systemName: "arrow.right.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50)
                    
                    Text("Complex Button")
                }
                .foregroundColor(.white)
                .padding()
                .background(.orange)
                .cornerRadius(10)
            }

        }
    }
}


#Preview {
    Layout()
}
