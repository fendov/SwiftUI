import SwiftUI

let countries = ["Россия","США","Канада","Германия","Франция","Япония","Китай",]

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(countries, id: \.self) { country in
                Text(country)
                    .font(.system(size: 20, weight: .bold))
                    .frame(maxWidth: .infinity, minHeight: 100)
                    .contentShape(Rectangle())
                    .listRowInsets(EdgeInsets())
            }
            .navigationTitle("Страны")
            .listStyle(PlainListStyle())
        }
    }
}

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }

