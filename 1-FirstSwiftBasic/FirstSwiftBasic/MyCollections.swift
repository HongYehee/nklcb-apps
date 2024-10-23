//  MyCollections.swift
//  FirstSwiftBasic

import SwiftUI

struct MyCollections: View {
    
    var foods: [String] = ["eggs", "bananas", "beans"]
    var jazzs: Set<String> = ["bibidudu", "labdap", "dididudu"]
    var hiphop: Set<String> = ["labdap", "rap", "wow"]
    var koEngDict: [String:String] = ["사과":"Apple", "바나나":"Banana"]
    
    var body: some View {
        VStack {
            Text(foods[0])
            Text(foods[1])
            Text(foods[2])
            
            Button {
                let intersectionMusic = hiphop.intersection(jazzs)
                intersectionMusic.description
            } label: {
                Text("hit!")
            }
            
            Text(koEngDict["사과"]!)
            Text(koEngDict["바나나"]!)
        }
    }
}

#Preview {
    MyCollections()
}
