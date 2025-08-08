//
//  Untitled.swift
//  SwiftUINavigation2
//
//  Created by Lena Hunanian on 08.08.25.
//
//
//enum Screen: Hashable {
//    case home
//    case profile
//    case settings
//}
//
// struct ContentView: View {
//    // Step 2: Navigation path state
//    @State private var path = NavigationPath()
//    
//    var body: some View {
//        // Step 3: NavigationStack bound to path
//        NavigationStack(path: $path) {
//            HomeView {
//                // Navigate to Settings
//                path.append(Screen.settings)
//            }
//            .navigationDestination(for: Screen.self) { screen in
//                switch screen {
//                case .home:
//                    HomeView {
//                        path.append(Screen.settings)
//                    }
//                case .settings:
//                    SettingsView {
//                        // Navigate to Profile
//                        path.append(Screen.profile)
//                    }
//
//                case .profile:
//                    ProfileView {
//                        // Navigate back to Home by clearing path
//                        path.removeLast(path.count)
//                    }
//                }
//            }
//        }
//    }
//}
//
//// Step 4 & 5: Views with buttons triggering navigation
//
//struct HomeView: View {
//    let goToSettings: () -> Void
//    
//    var body: some View {
//        VStack {
//            Text("Home View")
//                .font(.largeTitle)
//            Button("Go to Settings") {
//                goToSettings()
//            }
//            .padding()
//        }
//    }
//}
//
//
//
//struct SettingsView: View {
//    let goToProfile: () -> Void
//    
//    var body: some View {
//        VStack {
//            Text("Settings View")
//                .font(.largeTitle)
//            Button("Go to Profile") {
//                goToProfile()
//            }
//            .padding()
//        }
//    }
//}
//
//
//struct ProfileView: View {
//    let goToHome: () -> Void
//    
//    var body: some View {
//        VStack {
//            Text("Profile View")
//                .font(.largeTitle)
//            Button("Go to Home") {
//                goToHome()
//            }
//            .padding()
//        }
//    }
//}
