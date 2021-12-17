//
//  ContentView.swift
//  GKTransFordon
//
//  Created by Toni Löf on 2021-12-14.
//

import SwiftUI


struct ContentView: View {
    
    var vehicles = [
        Vehicle(regNr: "YLJ 666", besiktningsPeriod: "Januari"),
        Vehicle(regNr: "ABC 123", besiktningsPeriod: "Februari"),
        Vehicle(regNr: "IHK 872", besiktningsPeriod: "Mars")]
                            
                            
                            
                            
    var body: some View {
        
        List(vehicles) {
            
            vehicle in
           
            VehicleView(vehicle: vehicle)
            
         }
            
        }
      
    }
                            
                            
                            
struct VehicleView: View {
        
        var vehicle: Vehicle
        var body: some View {
            
            Text(vehicle.regNr)
        }
    }
                      
struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
                    ContentView()
            
        }
    }
