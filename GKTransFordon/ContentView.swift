//
//  ContentView.swift
//  GKTransFordon
//
//  Created by Toni Löf on 2021-12-14.
//

import SwiftUI


struct ContentView: View {
    
    @StateObject var vehicleList = VehiclesList()
    
    
    
    
    var body: some View {
        
        NavigationView {
            
            List() {
                
                ForEach(vehicleList.vehicles) { vehicle in
                    NavigationLink(destination: VehicleView(vehicle: vehicle)) {
                        RowView(vehicle: vehicle)
                    }
                    
                    
                    
                }
//                vehicle in
//
//                RowView(vehicle: vehicle)
                
            }
            .navigationBarTitle("Lastbilar")
                .navigationBarItems(trailing: NavigationLink(destination: VehicleView()) {
                                        Image(systemName: "plus.circle")
                })
            
        }
    }
    
    
    
}


struct RowView: View {
    
    var vehicle: Vehicle
    
    var body: some View {
        
        HStack {
            
            Text(vehicle.regNr)
                .font(.title3)
            Spacer()
            Text(vehicle.inspectionDate)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
