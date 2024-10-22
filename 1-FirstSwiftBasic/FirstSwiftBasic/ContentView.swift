//  ContentView.swift
//  FirstSwiftBasic

import SwiftUI

struct ContentView: View {
    
    var name: String = "레이"
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("\(name)님 안녕하세요!")
            Text("\(name)님의 포인트는 343점입니다.")
            Text("\(name)님 안녕히 가세요.")
            Text(name)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
