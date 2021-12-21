//
//  ContentView.swift
//  GKTransFordon
//
//  Created by Toni Löf on 2021-12-14.
//

import SwiftUI


struct ContentView: View {
    
    @EnvironmentObject var vehicleList : VehiclesList
    
    
    var body: some View {
        
        NavigationView {
            VStack {
                
                
                List() {
                    
                    ForEach(vehicleList.vehicles) { vehicle in
                        NavigationLink(destination: VehicleView(vehicle: vehicle)) {
                            RowView(vehicle: vehicle)
                        }
                        
                    }
                }
                
                Button(action: {
                    print("Beep beep printing")
                }, label: {
                    Text("Skriv ut lista")
                })
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 80, trailing: 0))
                
                .navigationBarTitle("Lastbilar")
                .navigationBarItems(trailing: NavigationLink(destination: CreateVehicleView()) {
                    Image(systemName: "plus.circle")
                })
                
                
                
            }
            
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
