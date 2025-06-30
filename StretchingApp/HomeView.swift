import SwiftUI
import AVKit

struct HomeView: View {
    @State private var showLogin = true
    private var player: AVQueuePlayer {
        let url = Bundle.main.url(forResource: "background", withExtension: "mp4")!
        return AVQueuePlayer(playerItem: AVPlayerItem(url: url))
    }

    var body: some View {
        ZStack {
            VideoPlayer(player: player)
                .onAppear { player.play() }
                .ignoresSafeArea()
            if showLogin {
                LoginView(showLogin: $showLogin)
            } else {
                Text("Benvenuto nell'app di stretching!")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black.opacity(0.6))
                    .cornerRadius(10)
            }
        }
    }
}

struct LoginView: View {
    @Binding var showLogin: Bool

    var body: some View {
        VStack(spacing: 16) {
            Text("Accedi")
                .font(.largeTitle)
            Button("Accedi con Apple") { showLogin = false }
                .buttonStyle(.borderedProminent)
            Button("Accedi con Google") { showLogin = false }
                .buttonStyle(.bordered)
            Button("Accedi con Email") { showLogin = false }
                .buttonStyle(.bordered)
        }
        .padding()
        .background(.thinMaterial)
        .cornerRadius(12)
    }
}
