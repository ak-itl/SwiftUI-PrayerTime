//
//  PrayerViewModel.swift
//  SwiftUI-PrayerTime
//
//  Created by Alain Keita on 1/4/24.
//

import SwiftUI
import CoreLocation


final class LocationViewModel:NSObject, ObservableObject, CLLocationManagerDelegate {
    
    @Published var lat: CLLocationDegrees?
    @Published var long: CLLocationDegrees?
    private var locationManager = CLLocationManager()
    
    
    override init() {
        super.init()
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        locationManager.delegate = self
        print ("1. location manager initialized")
        
    }
    /*
     
     
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        switch manager.authorizationStatus {
            
        case .notDetermined:
            print("LocationManager didChangeAuthorization notDetermined")
        case .restricted:
            print("LocationManager didChangeAuthorization restricted")
        case .denied:
            print("LocationManager didChangeAuthorization denied")
        case .authorizedAlways:
            locationManager?.requestLocation()
        case .authorizedWhenInUse:
            locationManager?.requestLocation()
        @unknown default:
            print("LocationManager defaul case of didChangeAuthorization")
        }
    }
    
    
   
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let latestLocation = locations.last else { return }
        print ("location updated: \(latestLocation)")
        
        DispatchQueue.main.async {
            self.userLocation = latestLocation
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error.localizedDescription)
    }
     */
}


extension LocationViewModel {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else { return }
        print ("2. location updated")
        DispatchQueue.main.async {
            self.lat = location.coordinate.latitude
            self.long = location.coordinate.longitude
        }
        
    }
}
