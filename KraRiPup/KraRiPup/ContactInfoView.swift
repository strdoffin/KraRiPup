//
//  ContactInfoView.swift
//  KraRiPup
//
//  Created by admin on 22/6/2567 BE.
//

import SwiftUI

struct ContactInfoView: View {
    @Binding var contactPassed:ContactStruct
    var body: some View {
        HStack{
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 40,height: 40)
            VStack(alignment:.leading){
                Text(contactPassed.name)
//                ForEach(contactPassed.date, id: \.self) { dateString in
//                    Text(dateString)
//                        .font(.subheadline)
//                }
            }
            Spacer()
        }
    }
}

#Preview {
    @State var contactPreview =  ContactStruct(name: "dofu", date: ["22/06/2567","23/06/2567"])
    return ContactInfoView(contactPassed: $contactPreview)
}
