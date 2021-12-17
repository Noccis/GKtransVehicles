//
//  VehicleView.swift
//  GKTransFordon
//
//  Created by Toni Löf on 2021-12-17.
//

import SwiftUI

struct VehicleView: View {
    
    var vehicle : Vehicle? = nil
    
    var body: some View {
        
        VStack {
            
            HStack {
                if let vehicle = vehicle {  // OM det finns en bil
                    Text("Ikon köra stan")
                        .padding()
                }else{                      // Om man ska skapa en ny bil
                    Text("Ingen ikon")
                        .padding()
                }
                Spacer()
                Button(action: {print("DELETE")}) {
                    Text("Delete")
                        .font(.title3)
                        .foregroundColor(Color.white)
                        .padding()
                }
                .background(Color.red)
                .cornerRadius(15.0)
                .padding()
            }
            
            
            if let vehicle = vehicle {  // OM det finns en bil
                Text(vehicle.regNr)
                    .font(.largeTitle)
                    .padding()
            }else{                      // Om man ska skapa en ny bil
                Text("Skapa ny bil")
                    .font(.largeTitle)
                    .padding()
            }
            
            Text("Besiktnings period:")
            Text(vehicle!.inspectionDate)
            
        }
    }
}

struct VehicleView_Previews: PreviewProvider {
    static var previews: some View {
        VehicleView()
    }
}
