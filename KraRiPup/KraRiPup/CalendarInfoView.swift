import SwiftUI

struct CalendarInfoView: View {
    @Environment(\.dismiss) var dismiss
    @State var comparedate = "22/06/2567"
    @State private var selectedDate = Date()
    @State private var isActive = false
    @Binding var namePassed :ContactStruct
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(stops: [
                Gradient.Stop(color: Color(red: 2/255, green: 0, blue: 36/255), location: 0),
                Gradient.Stop(color: Color(red: 9/255, green: 9/255, blue: 121/255), location: 0.57),
                Gradient.Stop(color: Color(red: 0, green: 212/255, blue: 255/255), location: 0.93)
            ]), startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea()

            VStack {
                // Display selected date as an integer (day of the month)
                HStack{
                    Button("back") {
                        dismiss()
                    }
                    Spacer()
                    Text("Select Wan Wang")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white )
                        .fontWeight(.bold)
                }.padding()

                List {
                    Section(header: Text("Detail")) {
                        Text("ชื่อคนใช้อ้ะ : \(namePassed.name)")
                    }
                    VStack {
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
                            
                            dismiss()
                        }) {
                            Text("ส่งวันที่ว่างจุ้บๆ")
                                .font(.title)
                                .foregroundColor(.white)
                                .padding()
                                .background(isActive ? Color.gray : Color.blue)
                                .cornerRadius(20)
                        }
                        .padding()

                        Spacer()
                    }
                    .padding()
                }
                .listStyle(GroupedListStyle()) // Apply list style
            }
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
    }
    
    var formattedDate: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        return formatter.string(from: selectedDate)
    }

    var dayOfMonth: Int {
        let calendar = Calendar.current
        let components = calendar.dateComponents([.day], from: selectedDate)
        return components.day ?? 0
    }

    func printSelectedDate() {
        print("Selected date is \(formattedDate)")
        if !namePassed.date.contains(formattedDate){
            namePassed.date.append(formattedDate)
        }
    }
}

#Preview {
    @State var calendarPreview =  ContactStruct(name: "dofu", date: ["23/06/2567"])
    return CalendarInfoView(namePassed: $calendarPreview)}
