//  MyCar.swift
//  FirstSwiftBasic

import SwiftUI

struct MyCar: View {
    
    var myCar: Kia = Kia()
    var broCar: Hyundai = Hyundai()
    
    let cars: [Drivable] = [Kia(), Hyundai()]
    
    @State var speed: Int = 10
    
    var body: some View {
        VStack {
            Text("speed : \(speed)")
            
            Button {
                //speed = myCar.speedDown(with: speed)
                speed = broCar.speedDown(with: speed)
                //cars.randomElement()?.speedDown(with: speed)
            } label: {
                Text("✋ 감속하기!")
            }
        }
        
//        ForEach(cars) { item in
//            
//        }
    }
}


protocol Drivable {
    func speedDown(with speed: Int) -> Int
}


struct Kia: Drivable {
    func speedDown(with speed: Int) -> Int {
        print("🚗 기아 차 속도가 5씩 줄어듭니다.")
        return speed - 5
    }
}


struct Hyundai: Drivable {
    func speedDown(with speed: Int) -> Int {
        print("🚗 현대 차 속도가 9씩 줄어듭니다.")
        return speed - 9
    }
}


#Preview {
    MyCar()
}
