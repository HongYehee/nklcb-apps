//  MyTab.swift
//  WarmUp

import SwiftUI

struct MyTab: View {
    var body: some View {
        
        TabView {
            TabDetail()
                .badge(2)
                .tabItem {
                    Label("Received2", systemImage: "tray.and.arrow.down.fill")
                }
            TabDetail2()
                .tabItem {
                    Label("Sent2", systemImage: "tray.and.arrow.up.fill")
                }
            TabDetail3()
                .badge("!")
                .tabItem {
                    Label("Account2", systemImage: "person.crop.circle.fill")
                }
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
        
    }
}

#Preview {
    MyTab()
}
