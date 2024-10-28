//  Detail.swift
//  WarmUp

import SwiftUI

struct Detail: View {
    
    @Binding var isPresented: Bool
    
    var body: some View {
        Text("Modal 페이지입니다 2")
        
        Button {
            isPresented = false
        } label: {
            Text("닫기")
        }
        
    }
}

#Preview {
    Detail(isPresented: .constant(true))
}
