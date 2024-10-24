//  Sample.swift
//  FirstSwiftBasic

import SwiftUI

struct Sample: View {
    
    let data = [
        Destination(direction: .east,
                    food: nil,
                    image: Image(systemName: "sunrise")),
        Destination(direction: .west,
                    food: nil,
                    image: Image(systemName: "balloon")),
        Destination(direction: .south,
                    food: "커피 맛집",
                    image: Image(systemName: "cup.and.saucer")),
        Destination(direction: .north,
                    food: "파스타 맛집",
                    image: Image(systemName: "fork.knife")),
        
    ]
    
    @State var selectedDestination: Destination?
    
    var body: some View {
        VStack {
            selectedDestination?.image
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            
            if let destination = selectedDestination {
                Text(destination.direction.rawValue)
                if let food = destination.food {
                    Text(food)
                }
            }
            
            Button {
                selectedDestination = data.randomElement()
            } label: {
                Text("돌려요!")
            }
        }
    }
}


enum Direction: String {
    case east = "동"
    case west = "서"
    case south = "남"
    case north = "북"
}


struct Destination {
    let direction: Direction
    let food: String?
    let image: Image
}


#Preview {
    Sample()
}
