//
//  WanNaiWangBang.swift
//  KraRiPup
//
//  Created by admin on 22/6/2567 BE.
//

import SwiftUI

struct WanNaiWangBang: View {
    
    
    var body: some View {
        
        NavigationStack{
            ZStack {
                       LinearGradient(gradient: Gradient(stops: [
                           Gradient.Stop(color: Color(red: 2/255, green: 0, blue: 36/255), location: 0),
                           Gradient.Stop(color: Color(red: 9/255, green: 9/255, blue: 121/255), location: 0.57),
                           Gradient.Stop(color: Color(red: 0, green: 212/255, blue: 255/255), location: 0.93)
                       ]), startPoint: .top, endPoint: .bottom)
                       .ignoresSafeArea()
                       
                
                VStack{
                    Text("Wan Nai Wang Bang?")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Text("ya bid na i sud")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                    NavigationLink{Mycontacts()}label: {
                        Text("Next")
                            .font(.title)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.pink )
                            .cornerRadius(20)
                    }
                    
                }
            }
        }
        }
    }


#Preview {
    WanNaiWangBang()
}
