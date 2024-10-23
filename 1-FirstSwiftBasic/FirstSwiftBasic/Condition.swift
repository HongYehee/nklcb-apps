//  Condition.swift
//  FirstSwiftBasic

import SwiftUI

struct Condition: View {
    
    var hasLoggedIn: Bool = false
    
    var body: some View {
        
        // if문
        if hasLoggedIn {
            Text("로그인 상태입니다.")
            Text("로그아웃 하시겠습니까?")
        } else {
            Text("로그아웃 상태입니다.")
            Text("로그인 하시겠습니까?")
        }
        
        // guard문
//        guard hasLoggedIn else {
//            Text("로그아웃 상태입니다.")
//            Text("로그인 하시겠습니까?")
//        }
//        Text("로그인 상태입니다.")
//        Text("로그아웃 하시겠습니까?")
    }
}

#Preview {
    Condition()
}
