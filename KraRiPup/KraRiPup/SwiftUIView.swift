//
//  SwiftUIView.swift
//  KraRiPup
//
//  Created by admin on 22/6/2567 BE.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        NavigationStack{
            NavigationLink{}label:
            {
                List{
                    Text("hello")
                    Text("hello")
                }
                .navigationTitle("ไม่สนิทบิดหมดไม่สลดบิดอีก")
            }
        }
    
    }
}

#Preview {
    SwiftUIView()
}
