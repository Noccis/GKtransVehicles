//
//  GKTransFordonApp.swift
//  GKTransFordon
//
//  Created by Toni Löf on 2021-12-14.
//

import SwiftUI
import Firebase

@main
struct GKTransFordonApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    @StateObject var vehicleList = VehiclesList()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(vehicleList)
        }
    }
}
