import SwiftUI

struct Mycontacts: View {
    @State var contactList: [ContactStruct] = [
        
    ]
    
    func showDuplicates() -> [String] {
        let allDates = contactList.flatMap { $0.date }

            var seen = Set<String>()
            var duplicates = Set<String>()
            
            for date in allDates {
                if seen.contains(date) {
                    duplicates.insert(date)
                } else {
                    seen.insert(date)
                }
            }
            
        return Array(duplicates)
    }

    var body: some View {
        NavigationStack {
            List {
                ForEach($contactList) { contact in
                    NavigationLink(destination: CalendarInfoView(namePassed: contact)) {
                        ContactInfoView(contactPassed: contact)
                    }
                }
                NavigationLink(destination: AddContact(contactList: $contactList)) {
                    HStack {
                        Image(systemName: "person.crop.circle.badge.plus")
                        Text("Add Contact")
                    }
                }
                NavigationLink(destination: ResultView(dateResult: showDuplicates())) {
                    HStack {
                        Image(systemName: "rectangle.portrait.and.arrow.forward.fill")
                        Text("See Result")
                    }
                }
            }
            .navigationTitle("My Team")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct Mycontacts_Previews: PreviewProvider {
    static var previews: some View {
        Mycontacts()
    }
}
