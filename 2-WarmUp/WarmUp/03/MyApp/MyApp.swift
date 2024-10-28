//  MyApp.swift
//  WarmUp

import SwiftUI

struct MyApp: View {
    
    @State var showModal: Bool = false
    
    var body: some View {
        TabView {
            FirstList()
            .tabItem {
                Label("first", systemImage: "tray.and.arrow.down.fill")
            }
             
             Text("두 번째 페이지")
                .tabItem {
                    Label("second", systemImage: "tray.and.arrow.down.fill")
                }
            
             Text("세 번째 페이지")
                .tabItem {
                    Label("third", systemImage: "tray.and.arrow.down.fill")
                }
            
             Text("네 번째 페이지")
                .tabItem {
                    Label("fourth", systemImage: "tray.and.arrow.down.fill")
                }
        }
        .sheet(isPresented: $showModal, content: {
            TabView {
//                OnboardingSample(onboardingTitle: "온보딩1", backgroundColor: .blue)
//                
//                OnboardingSample(onboardingTitle: "온보딩2", backgroundColor: .green)
                
                ZStack {
                    Color.gray.ignoresSafeArea()
                    VStack {
                        Text("온보딩3")
                        
                        Button {
                            showModal = false
                        } label: {
                            Text("Start")
                        }
                    }
                }
            }
            .tabViewStyle(.page)
        })
        .onAppear() {
            showModal = true
        }
    }
}

#Preview {
    MyApp()
}

