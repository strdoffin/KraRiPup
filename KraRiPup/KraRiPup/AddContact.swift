import SwiftUI

struct AddContact: View {
    @State private var newName: String = ""
    @Environment(\.presentationMode) var presentationMode
    @State private var showAlert = false
    
    @Binding var contactList: [ContactStruct]
    
    var body: some View {
        VStack {
            TextField("Enter Name", text: $newName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button(action: {
                if !newName.isEmpty {
                    addNewContact()
                    presentationMode.wrappedValue.dismiss()
                } else {
                    showAlert = true
                }
            }) {
                Text("Add Contact")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .alert(isPresented: $showAlert) {
                Alert(
                    title: Text("Name Required"),
                    message: Text("Please enter a name for the contact."),
                    dismissButton: .default(Text("OK"))
                )
            }
            
            Spacer()
        }
        .padding()
        .navigationTitle("Add Contact")
    }
    
    func addNewContact() {
        let newContact = ContactStruct(name: newName)
        contactList.append(newContact)
    }
}

struct AddContact_Previews: PreviewProvider {
    static var previews: some View {
        let contacts: [ContactStruct] = []
        return AddContact(contactList: .constant(contacts))
    }
}
