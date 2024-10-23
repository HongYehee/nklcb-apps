//  Selection.swift
//  FirstSwiftBasic

import SwiftUI

struct Selection: View {
    
    @State var myDirection: Direction = .east
    
    var body: some View {
        
        VStack {
            switch myDirection {
            case .east:
                Text("☀️ \(myDirection.rawValue)쪽은 일출이 예뻐요.")
            case .west:
                Text("🌅 \(myDirection.rawValue)쪽은 석양이 예뻐요.")
            case .south:
                Text("🏝️ \(myDirection.rawValue)쪽은 따뜻해요.")
            case .north:
                Text("☃️ \(myDirection.rawValue)쪽은 추워요.")
            default:
                Text("⚠️ 에러입니다. 동서남북 중에 선택해주세요.")
            }
            
            Button {
//                if myDirection == .north {
//                    myDirection = .east
//                } else {
//                    myDirection = .north
//                }
                    
                switch myDirection {
                case .north, .west:
                    myDirection = .east
                case .east:
                    myDirection = .south
                case .south:
                    myDirection = .west
                default:
                    myDirection = .north
                }
            } label: {
                Text("돌리기")
            }
        }
    }
}


#Preview {
    Selection()
}
