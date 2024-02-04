//
//  HomeView.swift
//  SwiftUI-PrayerTime
//
//  Created by Alain Keita on 1/12/24.
//

import SwiftUI
import CoreLocation

struct PrayersTabView: View {
    
    let coordinates:CLLocationCoordinate2D?
    
    var body: some View {
        NavigationView {
            Text(coordinates?.latitude.description ?? "no latitute receveid")
            Text(coordinates?.longitude.description ?? "no longitude")
        }
        
    }
}

#Preview {
    PrayersTabView(coordinates: CLLocationCoordinate2DMake(38.997662, -77.027023))
}
