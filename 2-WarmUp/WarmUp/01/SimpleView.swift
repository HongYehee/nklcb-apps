//  SimpleView.swift
//  WarmUp

import SwiftUI

struct SimpleView: View {
    var body: some View {
        VStack {
            Image(systemName: "pencil")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            
            Text("헤드라인입니다.")
                .font(.headline)
                .bold()
                .padding()
            
            Text("서브 헤드라인입니다.")
                .font(.subheadline)
                .padding()
            
            Text("바디입니다.")
                .font(.body)
                .padding()
            
            Button {
                //
            } label: {
                Text("Click Me")
                    .padding()
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .bold()
            }

        }
    }
}

#Preview {
    SimpleView()
}
