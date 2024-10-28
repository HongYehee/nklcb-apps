//  Modal.swift
//  WarmUp

import SwiftUI

struct Modal: View {
    
    @State var showModal: Bool = false
    
    var body: some View {
        VStack {
            Text("메인 페이지입니다.")
            
            Button {
                showModal = true
            } label: {
                Text("Modal 화면 전환")
            }

        }
        .sheet(isPresented: $showModal) {
            Detail(isPresented: $showModal)
        }
    }
}

#Preview {
    Modal()
}
