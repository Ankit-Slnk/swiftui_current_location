//
//  ContentView.swift
//  currentlocation
//
//  Created by Ankit Solanki on 16/02/22.
//

import SwiftUI
import CoreLocation

struct ContentView: View {
    @StateObject var locationManager = LocationManager()
    
    var userLatitude: String {
        let l = "\(locationManager.lastLocation?.coordinate.latitude ?? 0.0)"
        print("userLatitude")
        print(l)
        return l
    }
    
    var userLongitude: String {
        let l = "\(locationManager.lastLocation?.coordinate.longitude ?? 0.0)"
        print("userLongitude")
        print(l)
        return l
    }
    
    var body: some View {
        print(userLatitude) // dont remove this
        print(userLongitude)  // dont remove this
        
        return Text((userLatitude == "0.0" || userLongitude == "0.0") ? "Hello, world!" : (userLatitude + ", " + userLongitude))
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
