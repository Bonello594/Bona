import SwiftUI

struct UserProfile {
    var name: String = "User"
    var weight: String = ""
    var height: String = ""
    var age: String = ""
    var hobbies: String = ""
}

class ProfileViewModel: ObservableObject {
    @Published var profile = UserProfile()
}

struct ProfileView: View {
    @StateObject private var viewModel = ProfileViewModel()

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Informazioni")) {
                    TextField("Nome", text: $viewModel.profile.name)
                    TextField("Peso", text: $viewModel.profile.weight)
                    TextField("Altezza", text: $viewModel.profile.height)
                    TextField("Età", text: $viewModel.profile.age)
                    TextField("Hobby", text: $viewModel.profile.hobbies)
                }
                Section {
                    Button("Impostazioni") {}
                    Button("Contatta assistenza") {}
                    Button("Cambia lingua") {}
                    Button("Notifiche") {}
                    Button("Logout") {}
                }
            }
            .navigationTitle("Profilo")
        }
    }
}
