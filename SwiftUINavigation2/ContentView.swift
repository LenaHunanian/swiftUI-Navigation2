//
//  ContentView.swift
//  SwiftUINavigation2
//
//  Created by Lena Hunanian on 08.08.25.
//

import SwiftUI

enum Screen: Hashable {
    case home
    case settings
    case profile
}

struct ContentView: View {
    @State private var path = NavigationPath()
    var body: some View {
        NavigationStack(path: $path){
            HomeView {
                path.append(Screen.settings)
            }
            .navigationDestination(for: Screen.self) { screen in
                switch screen {
                case .home:
                    HomeView {
                        path.append(Screen.settings)
                    }
                
                case .settings:
                    SettingsView {
                        path.append(Screen.profile)
                    }
                case .profile:
                    ProfileView {
                        path.removeLast(path.count)
                    }
                }
            }
        }
    }
}

struct HomeView: View {
    let goToSettings : () -> Void
    var body: some View {
        Text("Home Screen")
            .font(.largeTitle)
            .padding()
        Button("Go to Settings"){
            goToSettings()
        }
    }
}

struct SettingsView: View {
    let goToProfile : () -> Void
    var body: some View {
        Text("Settings Screen")
            .font(.largeTitle)
            .padding()
        Button("Go to Profile"){
            goToProfile()
        }
    }
}

struct ProfileView: View {
    let goHome : () -> Void
    var body: some View {
        Text("Profile Screen")
            .font(.largeTitle)
            .padding()
        Button("Go back Home"){
            goHome()
        }
    }
}





#Preview {
    ContentView()
}


