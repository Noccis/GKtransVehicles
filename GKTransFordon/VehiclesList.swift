//
//  VehiclesList.swift
//  GKTransFordon
//
//  Created by Toni Löf on 2021-12-17.
//

import Foundation

class VehiclesList : ObservableObject {
    
    @Published var vehicles = [Vehicle]()
    
    init() {
        addMockData()
    }
    
    func addMockData() {
        vehicles.append(Vehicle(regNr: "YLJ 666", inspectionDate: "Januari"))
        vehicles.append(Vehicle(regNr: "ABC 123", inspectionDate: "Februari"))
        vehicles.append(Vehicle(regNr: "IHK 872", inspectionDate: "Mars"))
        vehicles.append(Vehicle(regNr: "HEJ 666", inspectionDate: "Januari"))
        vehicles.append(Vehicle(regNr: "JWK 728", inspectionDate: "December"))
    }
    
    /*
     Vehicle(regNr: "YLJ 666", inspectionDate: "Januari"),
     Vehicle(regNr: "ABC 123", inspectionDate: "Februari"),
     Vehicle(regNr: "IHK 872", inspectionDate: "Mars")
     */
    
}
