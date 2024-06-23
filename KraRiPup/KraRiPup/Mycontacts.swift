//
//  Mycontacts.swift
//  KraRiPup
//
//  Created by admin on 22/6/2567 BE.
//

import SwiftUI

struct Mycontacts: View {
    var body: some View {
        NavigationStack{
            List{
                NavigationLink{
                    CalendarInfoView()
                } label: {
                Text("dsfsd")
                }
                NavigationLink{
                    CalendarInfoView()
                } label: {
                    Text("fsdfds")
                }
                NavigationLink{
                    CalendarInfoView()
                } label: {
                    Image(systemName: "person.crop.circle.badge.plus")
                    Text("Add Contact")
                }
            }.navigationTitle("Mycontact")
        }
    }
    
    
    
}

#Preview {
    Mycontacts()
}
