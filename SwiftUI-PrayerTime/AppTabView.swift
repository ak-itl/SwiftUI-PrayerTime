//
//  AppTabView.swift
//  SwiftUI-PrayerTime
//
//  Created by Alain Keita on 1/12/24.
//

import SwiftUI
import CoreLocation

struct AppTabView: View {
    var body: some View {
        TabView {
            
            HomeView(coordinates: CLLocationCoordinate2DMake(38.997662, -77.027023))
                .tabItem {
                    Image(systemName: "clock.arrow.2.circlepath")
                    Text("Prayers")
                }
            
            PrayersView()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Times")
                }
            
            QiblaView()
                .tabItem {
                    Image(systemName: "location.circle.fill")
                    Text("Qibla")
                }
            
            PhoneSettingsView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
            
            
        }
    }
}

#Preview {
    AppTabView()
}
