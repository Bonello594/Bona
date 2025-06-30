import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem { Label("Home", systemImage: "house") }
            TrainingView()
                .tabItem { Label("Allenamento", systemImage: "figure.walk") }
            ActivityView()
                .tabItem { Label("Attività", systemImage: "chart.bar") }
            ProfileView()
                .tabItem { Label("Profilo", systemImage: "person") }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
