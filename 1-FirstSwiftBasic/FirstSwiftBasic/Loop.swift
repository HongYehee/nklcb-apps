//  Loop.swift
//  FirstSwiftBasic

import SwiftUI

struct Loop: View {
    var body: some View {
        
        let names: [String] = ["리이오", "리이사", "춘리", "올리브", "바미", "나리"]
        
        VStack {
            ForEach(names, id: \.self) { item in
                Text(item)
            }
        }
    }
}

#Preview {
    Loop()
}
