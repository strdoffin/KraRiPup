import SwiftUI

struct ContentView: View {
    @State private var selectedDate = Date()

    var body: some View {
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
    }

    var formattedDate: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .short
        return formatter.string(from: selectedDate)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
