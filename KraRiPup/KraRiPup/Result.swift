//
//  Result.swift
//  KraRiPup
//
//  Created by admin on 23/6/2567 BE.
//

import SwiftUI

struct ResultView: View {
    var dateResult: [String]
    
    var body: some View {
        ZStack {
            // Background Gradient
            LinearGradient(gradient: Gradient(stops: [
                Gradient.Stop(color: Color(red: 2/255, green: 0, blue: 36/255), location: 0),
                Gradient.Stop(color: Color(red: 9/255, green: 9/255, blue: 121/255), location: 0.57),
                Gradient.Stop(color: Color(red: 0, green: 212/255, blue: 255/255), location: 0.93)
            ]), startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea()
            
            VStack(spacing: 30) {
                VStack(spacing: 10) {
                    // Header Text
                    Text("วันนี้วันดีว่างตรงกันนะจา")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.top, 50)
                    ForEach(dateResult, id: \.self) { date in
                        Text(date)
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    }
                }
                
                HStack(spacing: 20) {
                    VStack {
                        // First Image with Text
                        Image("ResultPage")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 180)
                            .cornerRadius(15)
                            .shadow(color: .black.opacity(0.2), radius: 10, x: 0, y: 5) // Adding shadow
                        
                        Text("Katangsudlor")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .font(.title2)
                            .padding(.top, 10)
                    }
                    
                    VStack {
                        // Second Image with Text
                        Image("ResultPage")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 180)
                            .cornerRadius(15)
                            .shadow(color: .black.opacity(0.2), radius: 10, x: 0, y: 5) // Adding shadow
                        
                        Text("Tob")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .font(.title2)
                            .padding(.top, 10)
                    }
                }
                
                // Footer Text
                Text("เจอกันปิ้งย่างน้อง")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .font(.title2)
                
                Spacer()
            }
            .padding()
        }
    }
}

struct Result_page_Previews: PreviewProvider {
    static var previews: some View {
        @State var datetime: [String] = ["20/10/2567"]
        return ResultView(dateResult: datetime)
    }
}
