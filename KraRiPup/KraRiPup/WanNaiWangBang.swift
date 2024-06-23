//
//  WanNaiWangBang.swift
//  KraRiPup
//
//  Created by admin on 22/6/2567 BE.
//

import SwiftUI

struct WanNaiWangBang: View {
    @State private var selectedDate = Date()
    @State private var isActive = false
    var body: some View {
            VStack{
                Text("Wan Nai Wang Bang?")
                    .font(.largeTitle)
                Text("ya bid na i sud")
                    .font(.title2)
                Button(action: {
                    self.isActive.toggle()
                }) {
                    Text("ส่งวันที่ว่างจุ้บๆ")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.gray )
                        .cornerRadius(50)
                }
            }
        }
    }


#Preview {
    WanNaiWangBang()
}
