//  MyGeneric.swift
//  FirstSwiftBasic

import SwiftUI

struct MyGeneric: View {
    
    @State var input = ""
    @State var myStack = MyStack<Any>()
    
    var body: some View {
        VStack {
            TextField("숫자를 입력해주세요", text: $input)
            
            Button {
                myStack.insertValue(input: String(input))
            } label: {
                Text("저장")
            }
            
            Button {
                myStack.showData()
            } label: {
                Text("출력")
            }

        }
    }
}


struct MyStack<T> {
    
    var data: [T] = []
    
    mutating func insertValue(input: T) {
        data.append(input)
    }
    
    func showData() {
        data.forEach { item in
            print(item)
        }
    }
}


#Preview {
    MyGeneric()
}
