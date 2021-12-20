//
//  GKTransFordonApp.swift
//  GKTransFordon
//
//  Created by Toni Löf on 2021-12-14.
//

import SwiftUI

@main
struct GKTransFordonApp: App {
    @StateObject var vehicleList = VehiclesList()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(vehicleList)
        }
    }
}
