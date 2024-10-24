//  Nil.swift
//  FirstSwiftBasic

import SwiftUI

struct Nil: View {
    
    var name: String = "Leeo"
    var petName: String?
    
    var bami: String = "Bami"
    var petName2: String = "coco"
    
    var body: some View {
        VStack {
            Text("이름은 \(name), 펫 네임은 \(petName)입니다.")
            Text("이름은 \(bami), 펫 네임은 \(petName2)입니다.")
        }
        .onAppear {
            print("이름은 \(name), 펫 네임은 \(petName)입니다.")
            print("이름은 \(bami), 펫 네임은 \(petName2)입니다.")
        }
    }
}

#Preview {
    Nil()
}
