//  Setting.swift
//  WarmUp

import SwiftUI

struct SettingInfo: Hashable {
    let title: String
    let systemName: String
    let backgroundColor: Color
    let foregroundColor: Color = .white
}

struct Setting: View {
    
    let data: [[SettingInfo]] = [
        [SettingInfo(title: "일반", systemName: "gear", backgroundColor: .gray)],
        
        [SettingInfo(title: "손쉬운 사용", systemName: "accessibility", backgroundColor: .blue),
        SettingInfo(title: "검색", systemName: "magnifyingglass", backgroundColor: .gray),
        SettingInfo(title: "동작 버튼", systemName: "button.vertical.left.press", backgroundColor: .blue)],
        
        [SettingInfo(title: "스크린 타임", systemName: "hourglass", backgroundColor: .purple)],
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(data, id: \.self) { section in
                    Section {
                        ForEach(section, id: \.self) { item in
                            Label {
                                Text(item.title)
                            } icon: {
                                Image(systemName: item.systemName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 20, height: 20)
                                    .padding(.all, 7)
                                    .background(item.backgroundColor)
                                    .foregroundColor(item.foregroundColor)
                                    .cornerRadius(6)
                            }
                        }
                    }
                }
            }
            .navigationTitle("설정")
        }
    }
}

#Preview {
    Setting()
}
