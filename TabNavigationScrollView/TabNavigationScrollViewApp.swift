import SwiftUI

@main
struct TabNavigationScrollViewApp: App {
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}

struct MainView: View {
    
    var body: some View {
        TabView {
            Tab("Received", systemImage: "tray.and.arrow.down.fill") {
                ReceivedView()
            }
        }
    }
}

struct ReceivedView: View {
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading) {
                    ForEach(1..<100) { index in
                        HStack {
                            Text("Item \(index)")
                            Spacer()
                        }.padding()
                    }
                }
            }
//            .background(.red) // Disables scroll to top on Tab View tap
            .navigationTitle("Received")
        }
    }
}

#Preview {
    MainView()
}
