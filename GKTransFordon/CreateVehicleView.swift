//
//  CreateVehicleView.swift
//  GKTransFordon
//
//  Created by Toni Löf on 2021-12-18.
//

import SwiftUI

struct CreateVehicleView: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var vehicleList : VehiclesList
    
    @State var regNrInput : String = ""
    @State var inspectionDateInput : String = ""
    @State var cityAppropiate: Bool = false
    
    
    var body: some View {
        VStack {
            Text("Registrerings nummer:")
        TextField("Skriv här", text: $regNrInput)
//                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .background(Color.gray.opacity(0.2).cornerRadius(10))
                .font(.title3)
                .padding()
            
            Text("Besiktnings period:")
            TextField("Skriv här", text: $inspectionDateInput)
    //                .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color.gray.opacity(0.2).cornerRadius(10))
                    .font(.title3)
                    .padding()
            
            Text("Kan köra i stan?")
            HStack {
                Button(action: {
                    cityAppropiate = true
                    print("Kan köra i stan")
                }, label: {Text("Ja ")
                    
                })
                    .padding()
                    .background(Color.blue.cornerRadius(10).opacity(0.5))
                    .font(.title3)
                    .foregroundColor(Color.white)
                
                Button(action: {
                    cityAppropiate = false
                    print("Kan inte köra i stan")
                }, label: {Text("Nej")
                    
                })
                    .padding()
                    .background(Color.red.cornerRadius(10).opacity(0.5))
                    .font(.title3)
                    .foregroundColor(Color.white)
            }
            .padding()
            
    
            Spacer()
            Button(action: {
                saveVehicle()
                 presentationMode.wrappedValue.dismiss()
            }, label: { Text("save".uppercased())
            })
                .padding()
                .background(Color.blue.cornerRadius(10))
                .font(.title3)
                .foregroundColor(Color.white)

            
            
            
                
            
        }
    }
    
    func saveVehicle(){

        if regNrInput.count > 6 && inspectionDateInput.count > 3 {

            let newVehicle = Vehicle(regNr: regNrInput, inspectionDate: inspectionDateInput, cityAppropiate: cityAppropiate)
            vehicleList.vehicles.append(newVehicle)
        
        }
        
    }
}

//struct CreateVehicleView_Previews: PreviewProvider {
//    static var previews: some View {
//        CreateVehicleView()
//    }
//}
