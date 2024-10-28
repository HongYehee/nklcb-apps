//  Navigation.swift
//  WarmUp

import SwiftUI

struct Navigation: View {
    
    let titles = ["디테일 뷰(1)로 이동하기", "디테일 뷰(2)로 이동하기", "디테일 뷰(3)로 이동하기"]
    let descriptions = ["데스티네이션(1)입니다.", "데스티네이션(2)입니다.", "데스티네이션(3)입니다."]
    
    @State var showModal: Bool = false
    
    var body: some View {
        NavigationStack {
            List {
                ForEach([0, 1, 2], id: \.self) { index in
                    NavigationLink {
                        Text(descriptions[index])
                    } label: {
                        Text(titles[index])
                    }
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        showModal = true
                    } label: {
                        Text("Add")
                    }
                }
            }
            .sheet(isPresented: $showModal, content: {
                    Text("아이템 추가 페이지입니다.")
            })
            .navigationTitle("내비게이션")
        }
    }
}

#Preview {
    Navigation()
}
