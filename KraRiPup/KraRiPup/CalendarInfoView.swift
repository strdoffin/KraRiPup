//
//  ContactInfoView.swift
//  Contact
//
//  Created by admin on 22/6/2567 BE.
//

import SwiftUI

struct ContactInfoView: View {
    @State private var selectedDate = Date()
    var body: some View {
        List{
            Section("Detail"){
                Text("Name: ")
                Text("Age: ")
                Text("School: ")
            }
            VStack(alignment:.center){
                VStack {
                    Spacer()

                    Text("")
                        .font(.largeTitle)
                        .padding()

                    Spacer()

                    DatePicker(
                        "Select a date",
                        selection: $selectedDate,
                        displayedComponents: [.date, .hourAndMinute]
                    )
                    .datePickerStyle(GraphicalDatePickerStyle())
                    .padding()

                    Spacer()

                    Text("Selected date: \(formattedDate)")
                        .font(.title)
                        .padding()

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
}

#Preview {
    ContactInfoView()
    
}
