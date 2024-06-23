//
//  ContactInfoView.swift
//  Contact
//
//  Created by admin on 22/6/2567 BE.
//

import SwiftUI

struct ContactInfoView: View {
    @State private var selectedDate = Date()
    @State private var isActive = false
    var body: some View {
        List{
            Section("Detail"){
                Text("ชื่อคนใช้อ้ะ : ")
            }
            VStack(alignment:.center){
                VStack {
                    Spacer()
                    VStack{
                        Text("Wan Nai Wang Bang?")
                            .font(.largeTitle)
                        Text("ya bid na i sud")
                            .font(.title2)
                    }

                    Spacer()

                    // Calendar
                    DatePicker(
                        "Select a date",
                        selection: $selectedDate,
                        displayedComponents: .date
                    )
                    .datePickerStyle(GraphicalDatePickerStyle())
                    .padding()

                    Spacer()

                    Text("Wanni Wang: \(formattedDate)")
                        .font(.title2)
                        .padding()

                    Spacer()

                    Button(action: {
                        printSelectedDate()
                        self.isActive.toggle()
                    }) {
                        Text("ส่งวันที่ว่างจุ้บๆ")
                            .font(.title)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(50)
                    }
                    .foregroundColor(isActive ? .gray : .white)
                    .background(isActive ? Color.gray : Color.blue)

                    Spacer()
                }
            }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        }
    }
    var formattedDate: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .short
        return formatter.string(from: selectedDate)
    }

    func printSelectedDate() {
        print("Selected date is \(formattedDate)")
    }
}

#Preview {
    ContactInfoView()
    
}
