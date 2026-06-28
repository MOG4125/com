import SwiftUI

@main
struct MyApp: App {
    var body: some: Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "checkmark.seal.fill")
                .font(.system(size: 80))
                .foregroundColor(.green)
            
            Text("Success!")
                .font(.largeTitle)
                .bold()
            
            Text("This .ipa was compiled entirely in the cloud for free without using a Mac.")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
        }
        .padding()
    }
}
