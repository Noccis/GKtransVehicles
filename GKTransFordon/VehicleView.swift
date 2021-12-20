//
//  VehicleView.swift
//  GKTransFordon
//
//  Created by Toni Löf on 2021-12-17.
//

import SwiftUI

struct VehicleView: View {
    
    @EnvironmentObject var vehicleList : VehiclesList
    @Environment(\.presentationMode) var presentationMode
    
    var vehicle : Vehicle? = nil
    
    //    init() {
    //
    //        if let vehicle = vehicle {
    //            var newVehicle = Vehicle(regNr: "AAA 111", inspectionDate: "Januari")
    //        }
    //
    //    }
    
    init(vehicle: Vehicle? = nil){
        
        
        if let vehicle = vehicle {
            self.vehicle = vehicle
            
        }else {
            self.vehicle = Vehicle(regNr: "Reg Nr", inspectionDate: "besiktnings period", cityAppropiate: false) // If you remove me, also remove the ! in text regNr and inspection date pls.
        }
    }
    
    var body: some View {
        
        VStack {
            
            HStack {
               
                    Text("Ikon köra stan")
                        .padding()
                
                Spacer()
                
                Button(action: {
                    if let vehicle = vehicle {
                        
                        deleteVehicle(vehicle: vehicle)
                        presentationMode.wrappedValue.dismiss()
                    }
                    
                    
                }) {
                    Text("Delete")
                        .font(.title3)
                        .foregroundColor(Color.white)
                        .padding()
                }
                .background(Color.red)
                .cornerRadius(15.0)
                .padding()
            }
//            Spacer()
            
                Text(vehicle!.regNr)
                    .font(.largeTitle)
                    .padding()
            
            
            Text("Besiktnings period:")
            
                Text(vehicle!.inspectionDate)
                    .padding()
          
            
            Spacer()
            Text("Rapporterade incidenter")
            
        }
    }
    func deleteVehicle(vehicle: Vehicle) {
      
        vehicleList.delete(vehicle: vehicle)
    }
}

struct VehicleView_Previews: PreviewProvider {
    static var previews: some View {
        VehicleView()
    }
}
