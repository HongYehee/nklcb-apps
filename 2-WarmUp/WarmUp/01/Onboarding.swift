//  Onboarding.swift
//  WarmUp

import SwiftUI

struct Onboarding: View {
    var body: some View {
        VStack {
            Text("What's New in Photos")
                .font(.system(size: 35))
                .bold()
                .padding()
                .padding(.top, 50)
            
            HStack() {
                Image(systemName: "circles.hexagongrid.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35)
                    .padding(.horizontal, 7)
                    .foregroundColor(.blue)
                
                VStack(alignment: .leading) {
                    Text("All New Design")
                        .font(.headline)
                    Text("Find your photos and videos faster with automatic organization and a familiar grid layout.")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding(.trailing)
            }
            .padding(.vertical)
            
            HStack {
                Image(systemName: "photo.stack")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35)
                    .padding(.horizontal, 7)
                    .foregroundColor(.blue)
                
                VStack(alignment: .leading) {
                    Text("New Collections")
                        .font(.headline)
                    Text("Browse your library by recent days and your favorite groups of people, trips, and more.")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding(.trailing)
            }
            .padding(.vertical)
            
            HStack {
                Image(systemName: "point.bottomleft.forward.to.arrowtriangle.uturn.scurvepath")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35)
                    .padding(.horizontal, 7)
                    .foregroundColor(.blue)
                
                VStack(alignment: .leading) {
                    Text("Fully Customizable")
                        .font(.headline)
                    Text("Organize the Photos app by reorderiing collections and pinning items for easy access.")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding(.trailing)
            }
            .padding(.vertical)
            
            Spacer()
            
            Button {
                
            } label: {
                Text("Continue")
//                    .frame(maxWidth: .infinity - 20)
                    .padding()
                    .frame(width: 350)
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding(.bottom, 60)
        }
    }
}

#Preview {
    Onboarding()
}
