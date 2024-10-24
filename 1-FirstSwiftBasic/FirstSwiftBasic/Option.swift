//  Option.swift
//  FirstSwiftBasic

import SwiftUI

struct Option: View {
    
    var leeo = People(name: "Leeo", mbti: MBTI(name: "ENFP"))
    var bami = People(name: "bami", petName: "coco")
    var berry = People(name: "berry", petName: "cookie")
    
    var body: some View {
        VStack {
            
//            if let leeo = leeo {
//                if let mbti = leeo.mbti {
//                    if let name = mbti.name {
//                        
//                    }
//                }
//            }
//            
//            if let leeoMbtiName = leeo?.mbti?.name {
//                Text(leeoMbtiName)
//            } else {
//                Text("No MBTI name")
//            }
            
            if let petName = leeo.petName {
                Text("이름은 \(leeo.name), 동물의 이름은 \(petName)")
            } else {
                Text("이름은 \(leeo.name), 동물의 이름은 없어요.")
            }
            
            if let petName = bami.petName {
                Text("이름은 \(bami.name), 동물의 이름은 \(petName)")
            }
            
            if let petName = berry.petName {
                Text("이름은 \(berry.name), 동물의 이름은 \(petName)")
            }
            
        }
    }
}


struct People {
    let name: String
    var petName: String?
    var mbti: MBTI?
}


struct MBTI {
    let name: String?
}


#Preview {
    Option()
}
