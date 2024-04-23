//
//  ContentView.swift
//  HMS_Main
//
//  Created by admin on 23/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            DashboardView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Dashboard")
                }
            
            AppointmentView()
                .tabItem {
                    Image(systemName: "calendar")
                    Text("Appointments")
                }
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
        }
    }
}

struct AppointmentView: View {
    var body: some View {
        VStack {
            Text("Appointments")
        }
    }
}

struct ProfileView: View {
    var body: some View {
        VStack {
            Text("Profile")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

#Preview {
    ContentView()
}
