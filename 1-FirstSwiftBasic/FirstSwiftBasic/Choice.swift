//  Choice.swift
//  FirstSwiftBasic

import SwiftUI

struct Choice: View {
    
    var direction: Direction = .east
    var member: Member = .leeo
    var menu: Menu = .steak("medium")
    
    var body: some View {
        Text("👋 안녕하세요, \(member)님.")
        Text("🧭 방향은 \(direction.rawValue)쪽입니다.")
        Text("🍽️ 메뉴는 \(menu)입니다.")
    }
}


//enum Direction: String {
//    case east = "동"
//    case west = "서"
//    case south = "남"
//    case north = "북"
//    case myWay
//    case back
//}


enum Member {
    case leeo, tom, bami, koko
}


enum Menu {
    case pasta
    case pizza
    case steak(String)
}


#Preview {
    Choice()
}
